using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoneyTrigger : MonoBehaviour
{
    private bool playerInRange;
    private string kcodestring;

    private void Awake()
    {
        playerInRange = false;
    }

    void Update()
    {
        if (playerInRange)
        {
            foreach (KeyCode kcode in Enum.GetValues(typeof(KeyCode)))
            {
                if (Input.GetKeyDown(kcode))
                {
                    kcodestring = kcode.ToString();

                    if (kcodestring == "Space")
                    {
                        Debug.Log("Collected");
                    }
                }
            }
        }
    }

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.tag == "Player")
        {
            playerInRange = true;
        }
    }

    private void OnTriggerExit(Collider collider)
    {
        if (collider.gameObject.tag == "Player")
        {
            playerInRange = false;
        }
    }
}
