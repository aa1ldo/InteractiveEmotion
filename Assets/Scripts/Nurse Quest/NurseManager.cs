using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NurseManager : MonoBehaviour
{
    [SerializeField] private GameObject nurse1;
    [SerializeField] private GameObject nurse2;
    [SerializeField] private GameObject nurse3;

    void Start()
    {
        nurse2.SetActive(false);
        nurse3.SetActive(false);
    }

    void Update()
    {

        bool offeredAlcohol = ((Ink.Runtime.BoolValue)DialogueManager
            .GetInstance()
            .GetVariableState("offeredAlcohol")).value;

        if(HerbScoreManager.Instance.score == 5)
        {
            nurse2.SetActive(true);
            nurse1.SetActive(false);
        }

        if (offeredAlcohol)
        {
            nurse3.SetActive(true);
            nurse2.SetActive(false);
        }
    }
}
