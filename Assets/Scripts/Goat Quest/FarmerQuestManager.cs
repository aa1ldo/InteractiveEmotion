using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FarmerQuestManager : MonoBehaviour
{
    [SerializeField] private GameObject Farmer1;
    [SerializeField] private GameObject Farmer2;
    [SerializeField] private GameObject Farmer3;
    [SerializeField] private GameObject Farmer4;

    private bool completedQuest = false;

    void Start()
    {
        Farmer2.SetActive(false);
        Farmer3.SetActive(false);
        Farmer4.SetActive(false);
    }

    void Update()
    {
        bool receivedQuest = ((Ink.Runtime.BoolValue)DialogueManager
            .GetInstance()
            .GetVariableState("receivedQuest")).value;

        bool receivedReward = ((Ink.Runtime.BoolValue)DialogueManager
            .GetInstance()
            .GetVariableState("receivedReward")).value;

        if (GoatScoreManager.Instance.score == 10)
        {
            completedQuest = true;
        }

        if(receivedQuest == true)
        {
            Farmer2.SetActive(true);
            Farmer1.SetActive(false);
        }

        if (completedQuest == true)
        {
            Farmer3.SetActive(true);
            Farmer2.SetActive(false);
        }

        if (receivedReward == true)
        {
            Farmer4.SetActive(true);
            Farmer3.SetActive(false);
        }
    }
}
