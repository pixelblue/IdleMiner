void UIOutline_float(
    UnityTexture2D MainTex,
    UnitySamplerState Sampler,
    float2 UV,
    float4 OutlineColor,
    float OutlineWidth,
    float AlphaCutoff,
    float4 VertexColor,
    out float4 OutColor,
    out float OutAlpha)
{
    float2 texelSize;
    float mipLevels;
    MainTex.tex.GetDimensions(0, texelSize.x, texelSize.y, mipLevels);
    texelSize = 1.0 / texelSize * OutlineWidth;

    // Shrink UV so the sprite doesn't fill edge-to-edge,
    // leaving room for the outline to exist outside it
    float2 padding = texelSize;
    float2 paddedUV = UV * (1.0 - padding * 2.0) + padding;

    float4 center = MainTex.tex.Sample(Sampler.samplerstate, paddedUV);

    float neighborAlpha = 0;
    neighborAlpha = max(neighborAlpha, MainTex.tex.Sample(Sampler.samplerstate, paddedUV + float2( texelSize.x,  0)).a);
    neighborAlpha = max(neighborAlpha, MainTex.tex.Sample(Sampler.samplerstate, paddedUV + float2(-texelSize.x,  0)).a);
    neighborAlpha = max(neighborAlpha, MainTex.tex.Sample(Sampler.samplerstate, paddedUV + float2( 0,  texelSize.y)).a);
    neighborAlpha = max(neighborAlpha, MainTex.tex.Sample(Sampler.samplerstate, paddedUV + float2( 0, -texelSize.y)).a);
    neighborAlpha = max(neighborAlpha, MainTex.tex.Sample(Sampler.samplerstate, paddedUV + float2( texelSize.x,  texelSize.y)).a);
    neighborAlpha = max(neighborAlpha, MainTex.tex.Sample(Sampler.samplerstate, paddedUV + float2(-texelSize.x,  texelSize.y)).a);
    neighborAlpha = max(neighborAlpha, MainTex.tex.Sample(Sampler.samplerstate, paddedUV + float2( texelSize.x, -texelSize.y)).a);
    neighborAlpha = max(neighborAlpha, MainTex.tex.Sample(Sampler.samplerstate, paddedUV + float2(-texelSize.x, -texelSize.y)).a);

    float isOutline = step(AlphaCutoff, neighborAlpha) * step(center.a, AlphaCutoff);

    float4 finalColor = lerp(center, OutlineColor, isOutline);

    OutColor = finalColor * float4(VertexColor.rgb, 1.0);
    OutAlpha = max(max(finalColor.a, isOutline), center.a) * VertexColor.a;
}