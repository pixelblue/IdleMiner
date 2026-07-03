using System;
using ANS.Common;
using ANS.Common.ServiceLocator;
using UnityEngine;
using UnityEngine.InputSystem;

namespace Idler
{
    public class BotSpawner : MonoBehaviour
    {
        [SerializeField] private BotController botPrefab;
        [SerializeField] private Transform botContainer;
        [SerializeField] private float speed = 20.0f;
        [SerializeField] private float maxSpeed = 30.0f;
        [SerializeField] private Vector2 randomRadius;

        private IPool poolCtrl;
        public Interactable Interactable { get; private set; }
        
        private void Awake()
        {
            poolCtrl = ServiceLocator.Current.Get<IPool>();
        }

        public void Initialize(Interactable interactable)
        {
            this.Interactable = interactable;

            var baseStation = interactable as Interactable_BaseStation;
            var botsToAdd = baseStation.GetNumberOfBots();
            AddBot(botsToAdd);


        }

        private void Update()
        {
            var currentSpeed = speed;
            if (Interactable.IsCursorPressed)
                currentSpeed = maxSpeed;
            botContainer.transform.Rotate(Vector3.up, currentSpeed * Time.deltaTime);
            
            if(Application.isEditor) if(Keyboard.current.bKey.wasPressedThisFrame) AddBot(1);
        }

        public void AddBot(int botsToAdd)
        {
            for (int i = 0; i < botsToAdd; i++)
            {
                var botCtrl = poolCtrl.Spawn(botPrefab.name, Vector3.zero) as BotController;
                botCtrl.Initialize(this);
                botCtrl.transform.SetParent(botContainer);
                var radius = UnityEngine.Random.Range(randomRadius.x, randomRadius.y);
                var randomPos = UnityEngine.Random.onUnitSphere * radius;
                randomPos.y = 0f;
                botCtrl.transform.localPosition = randomPos;
            }
        }
    }
}