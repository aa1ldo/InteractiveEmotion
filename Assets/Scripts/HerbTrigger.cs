using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HerbTrigger : MonoBehaviour
{
    [SerializeField] private GameObject visualCue;

    private bool playerInRange;

    private void Awake()
    {
        playerInRange = false;
        visualCue.SetActive(false);
    }

    private void Update()
    {
        if (playerInRange)
        {
            visualCue.SetActive(true);

            if (Input.GetKeyDown(KeyCode.E))
            {
                HerbScoreManager.Instance.score += 1;
                Debug.Log(HerbScoreManager.Instance.score);
                Destroy(transform.parent.gameObject);
            }
        }
        else
        {
            visualCue.SetActive(false);
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
