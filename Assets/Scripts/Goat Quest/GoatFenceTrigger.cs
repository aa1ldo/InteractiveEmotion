using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GoatFenceTrigger : MonoBehaviour
{
    private bool goatInRange;

    private bool runThis;

    private void Awake()
    {
        goatInRange = false;
        runThis = false;
    }

    void Update()
    {
        if (runThis == true)
        {
            if (goatInRange)
            {
                GoatScoreManager.Instance.score += 1;
                Debug.Log(GoatScoreManager.Instance.score);
                runThis = false;
            }
            else
            {
                GoatScoreManager.Instance.score -= 1;
                Debug.Log(GoatScoreManager.Instance.score);
                runThis = false;
            }
        }
    }

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.tag == "Goat")
        {
            goatInRange = true;
            runThis = true;
        }
    }

    private void OnTriggerExit(Collider collider)
    {
        if (collider.gameObject.tag == "Goat")
        {
            goatInRange = false;
            runThis = true;
        }
    }
}
