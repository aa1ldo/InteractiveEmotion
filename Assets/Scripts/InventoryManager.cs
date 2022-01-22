using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InventoryManager : MonoBehaviour
{
    [SerializeField] private int herbCount;

    public void PickUpHerb()
    {
        herbCount++;
    }
}
