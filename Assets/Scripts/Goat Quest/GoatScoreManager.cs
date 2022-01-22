using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GoatScoreManager : MonoBehaviour
{
    private static GoatScoreManager _instance;

    public static GoatScoreManager Instance { get { return _instance; } }

    public int score;

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

