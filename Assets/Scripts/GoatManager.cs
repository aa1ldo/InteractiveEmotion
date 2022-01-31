using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GoatManager : MonoBehaviour
{
    [SerializeField] private GameObject talkingGoats;
    [SerializeField] private GameObject movingGoats;
    void Start()
    {
        movingGoats.SetActive(false);
    }

    void Update()
    {
        bool receivedQuest = ((Ink.Runtime.BoolValue)DialogueManager
            .GetInstance()
            .GetVariableState("receivedQuest")).value;

        if (receivedQuest)
        {
            movingGoats.SetActive(true);
            talkingGoats.SetActive(false);
        }
    }
}
