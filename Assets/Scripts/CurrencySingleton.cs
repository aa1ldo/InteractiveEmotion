using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CurrencySingleton : MonoBehaviour
{
    private static CurrencySingleton _instance;

    public static CurrencySingleton Instance { get { return _instance; } }

    public int money;

    private void Awake()
    {
        if (_instance != null && _instance != this)
        {
            Destroy(this.gameObject);
        }
        else
        {
            _instance = this;
        }
    }
}
