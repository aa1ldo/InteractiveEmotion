using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BellboyManager : MonoBehaviour
{
    [SerializeField] private GameObject bellBoy1;
    [SerializeField] private GameObject bellBoy2;
    [SerializeField] private GameObject bellBoy3;

    void Start()
    {
        bellBoy2.SetActive(false);
        bellBoy3.SetActive(false);
    }

    void Update()
    {
        bool talkedToBellboy = ((Ink.Runtime.BoolValue)DialogueManager
            .GetInstance()
            .GetVariableState("talkedToBellboy")).value;

        bool talkedToMayor = ((Ink.Runtime.BoolValue)DialogueManager
            .GetInstance()
            .GetVariableState("talkedToMayor")).value;

        if (talkedToBellboy)
        {
            Destroy(GameObject.Find("Gate"));
            bellBoy1.SetActive(false);
            bellBoy2.SetActive(true);
        }

        if (talkedToMayor)
        {
            bellBoy2.SetActive(false);
            bellBoy3.SetActive(true);
        }
    }
}
