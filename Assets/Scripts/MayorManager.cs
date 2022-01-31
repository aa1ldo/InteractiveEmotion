using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MayorManager : MonoBehaviour
{
    [SerializeField] private GameObject mayor1;
    [SerializeField] private GameObject mayor2;

    void Start()
    {
        mayor2.SetActive(false);
    }

    void Update()
    {
        bool talkedToMayor = ((Ink.Runtime.BoolValue)DialogueManager
            .GetInstance()
            .GetVariableState("talkedToMayor")).value;

        if (talkedToMayor)
        {
            mayor1.SetActive(false);
            mayor2.SetActive(true);
        }
    }
}
