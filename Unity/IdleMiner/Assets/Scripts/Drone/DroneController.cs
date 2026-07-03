using System;
using ANS_Core.Utilities;
using ANS.Common;
using ANS.Common.ServiceLocator;
using DG.Tweening;
using DG.Tweening.Plugins.Core.PathCore;
using Idler.DroneSpawner;
using JetBrains.Annotations;
using UnityEngine;

namespace Idler
{
    public class DroneController : MonoBehaviour
    {
        private Vector3[] pathPoints;
        private Interactable_DroneSpawner droneSpawner;
        private MineableObject minableObject;

        private IPool poolCtrl;
        
        private void Awake()
        {
            poolCtrl = ServiceLocator.Current.Get<IPool>();
        }

        public void Initialize(Interactable_DroneSpawner droneSpawner, MineableObject minableObject)
        {
            this.droneSpawner = droneSpawner;
            this.minableObject = minableObject;
            transform.position = droneSpawner.droneStartPos.position;

            var randomPathPoint = droneSpawner.drone2ndStartPos.position + droneSpawner.drone2ndStartPos.forward * 8f;
            randomPathPoint += droneSpawner.drone2ndStartPos.right * UnityEngine.Random.Range(-3f, 3f);
            pathPoints = new[]
            {
                droneSpawner.droneStartPos.position,
                droneSpawner.drone2ndStartPos.position,
                randomPathPoint,
                minableObject.transform.position
            };

            FlyTo(new[] { pathPoints[1], pathPoints[2], pathPoints[3] }, () =>
            {
                float loaded = droneSpawner.GetLoadCapacity();
                FlyTo(new[] { pathPoints[2], pathPoints[1], pathPoints[0] }, () =>
                {
                    droneSpawner.DroneReturned(loaded);
                    poolCtrl.Release(Util.GetNameWithoutClone(gameObject.name), this);
                });
            });
        }

        private void FlyTo(Vector3[] waypoints, Action onComplete)
        {
            var path = new Path(PathType.CatmullRom, waypoints, 10, Color.yellow);
            transform.DOPath(path, 3.0f)
                     .SetLookAt(0.01f, Vector3.forward)
                     .SetEase(Ease.OutCubic)
                     .OnComplete(() => onComplete());
        }
    }
}
