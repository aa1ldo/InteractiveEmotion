using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;

public class CurrencyManager : MonoBehaviour
{
    [SerializeField] private Text text;

    void Update()
    {

        void Update()
        {
            int money = ((Ink.Runtime.IntValue)DialogueManager
               .GetInstance()
               .GetVariableState("money")).value;
            int moneyToAdd = ((Ink.Runtime.IntValue)DialogueManager
                .GetInstance()
                .GetVariableState("moneyToAdd")).value;

            globals.variablesState["money"] = CurrencySingleton.Instance.money;
        }

        void addMoney()
        {
            CurrencySingleton.Instance.money += moneyToAdd;
        }

        text.text = "Money: " + money;
    }
}
