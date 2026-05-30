using UnityEngine;
using UnityEngine.UI;

namespace ANS_Core.Extensions
{
    public static class UiExtenstions
    {
        public static Vector2Int GetColumnAndRowCount(this GridLayoutGroup gridLayout)
        {
            var column = 0;
            var row = 0;

            if (gridLayout.transform.childCount == 0)
                return Vector2Int.zero;

            //Column and row are now 1
            column = 1;
            row = 1;

            //Get the first child GameObject of the GridLayoutGroup
            var firstChildObj = gridLayout.transform.GetChild(0).GetComponent<RectTransform>();

            var firstChildPos = firstChildObj.anchoredPosition;
            var stopCountingRow = false;

            //Loop through the rest of the child object
            for (int i = 1; i < gridLayout.transform.childCount; i++)
            {
                //Get the next child
                var currentChildObj = gridLayout.transform.GetChild(i).GetComponent<RectTransform>();
                var currentChildPos = currentChildObj.anchoredPosition;

                //if first child.x == otherchild.x, it is a column, ele it's a row
                if (firstChildPos.x == currentChildPos.x)
                {
                    column++;
                    //Stop couting row once we find column
                    stopCountingRow = true;
                }
                else
                {
                    if (!stopCountingRow)
                        row++;
                }
            }

            return new Vector2Int(row, column);
        }
    }
}