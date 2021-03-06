using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveFromTarget : MonoBehaviour
{
    [SerializeField] private Transform target;
    private Rigidbody rb;
    private bool playerInRange;
    [SerializeField] private float goatSpeed = -200f;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
        playerInRange = false;
    }

    void Update()
    {
        if (playerInRange)
        {
            rb.transform.LookAt(new Vector3(target.position.x, transform.position.y, target.position.z));
            rb.AddForce(transform.forward * goatSpeed * Time.deltaTime, ForceMode.Impulse);
        }
        else
        {
            rb.velocity = Vector3.zero;
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
