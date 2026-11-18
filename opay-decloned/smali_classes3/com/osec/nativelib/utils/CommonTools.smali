.class public Lcom/osec/nativelib/utils/CommonTools;
.super Ljava/lang/Object;
.source "CommonTools.java"


# static fields
.field public static final KEY_FUNCLIST:Ljava/lang/String; = "func_list"

.field private static final MINUTE:I = 0x8ca0

.field private static final NAME_SP:Ljava/lang/String; = "OPay_Security"

.field private static final TAG:Ljava/lang/String; = "CommonTools"

.field private static mInstance:Landroid/content/SharedPreferences;

.field private static mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/osec/nativelib/utils/CommonTools;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static generateHttpFixedData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "CommonTools"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/osec/nativelib/utils/CommonTools;->getCurrentTime()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v4, 0x1

    .line 42
    new-array v5, v4, [Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    aput-object v1, v5, v6

    .line 46
    .line 47
    const-string v1, "%08d"

    .line 48
    .line 49
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    xor-int/2addr p0, v2

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    new-array v2, v4, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object p0, v2, v6

    .line 99
    .line 100
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 112
    :catch_0
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {v0, p0}, Lcom/osec/nativelib/utils/OpayLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string p2, "http fixed :"

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {v0, p1}, Lcom/osec/nativelib/utils/OpayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-object p0
.end method

.method private static getCurrentTime()Ljava/lang/String;
    .locals 11

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-array v3, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v2, v3, v4

    .line 18
    .line 19
    const-string v2, "%04d"

    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    add-int/2addr v3, v1

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-array v5, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object v3, v5, v4

    .line 38
    .line 39
    const-string v3, "%02d"

    .line 40
    .line 41
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const/4 v6, 0x5

    .line 46
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    new-array v7, v1, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object v6, v7, v4

    .line 57
    .line 58
    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    const/16 v7, 0xb

    .line 63
    .line 64
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    new-array v8, v1, [Ljava/lang/Object;

    .line 73
    .line 74
    aput-object v7, v8, v4

    .line 75
    .line 76
    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    const/16 v8, 0xc

    .line 81
    .line 82
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    new-array v9, v1, [Ljava/lang/Object;

    .line 91
    .line 92
    aput-object v8, v9, v4

    .line 93
    .line 94
    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    const/16 v9, 0xd

    .line 99
    .line 100
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    new-array v10, v1, [Ljava/lang/Object;

    .line 109
    .line 110
    aput-object v9, v10, v4

    .line 111
    .line 112
    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const/16 v9, 0xe

    .line 117
    .line 118
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-array v1, v1, [Ljava/lang/Object;

    .line 127
    .line 128
    aput-object v0, v1, v4

    .line 129
    .line 130
    const-string v0, "%03d"

    .line 131
    .line 132
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    return-object v0
.end method

.method private static getDefaultSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    sget-object v0, Lcom/osec/nativelib/utils/CommonTools;->mInstance:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/osec/nativelib/utils/CommonTools;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/osec/nativelib/utils/CommonTools;->mInstance:Landroid/content/SharedPreferences;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "OPay_Security"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sput-object p0, Lcom/osec/nativelib/utils/CommonTools;->mInstance:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0

    .line 25
    goto :goto_2

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0

    .line 28
    :cond_1
    :goto_2
    sget-object p0, Lcom/osec/nativelib/utils/CommonTools;->mInstance:Landroid/content/SharedPreferences;

    .line 29
    .line 30
    return-object p0
.end method

.method public static getRootCerts()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MIIJFTCCB/2gAwIBAgIMF1fO3seLXO0TFoEgMA0GCSqGSIb3DQEBCwUAMFAxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMSYwJAYDVQQDEx1HbG9iYWxTaWduIFJTQSBPViBTU0wgQ0EgMjAxODAeFw0xOTA3MDgwNDU3MDJaFw0yMDEwMjgwOTQyNTRaMIGIMQswCQYDVQQGEwJDTjEQMA4GA1UECBMHYmVpamluZzEQMA4GA1UEBxMHYmVpamluZzFCMEAGA1UEChM5QkVJSklORyBKSU5HRE9ORyBTSEFOR0tFIElORk9STUFUSU9OIFRFQ0hOT0xPR1kgQ08uLCBMVEQuMREwDwYDVQQDDAgqLmpkLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAOXt0vMNO3GAkNgSqHpbXVnd3K6CivkJP4c6F5WhfXzDm06yrW1giHsBhw95pWPq05jsGBrI3AUgXHW/zPSZYdUzV7MZ5g6rQoomVAUrffUKsVE+oQjAQTnH2Thr9RmGykH6iS/xworljoPq725qsg6dRmlO1XOQoyd78fcBoO05pMSbL9EcSZcfT7qA4dJmKL1c1FoXe8gRUWlmYufgikTWrjN8VIF4ufi/M30fKg+bWemjyXzaXyY2fykjf3zCW4/wmdHrgD/WcHxbeecdVZs3PrPwUkAaxgy7QwEpqj+Hja102eZOWeifDiq3ozy2hELpYw7ewdkJRQLuQOqxdi0CAwEAAaOCBbQwggWwMA4GA1UdDwEB/wQEAwIFoDCBjgYIKwYBBQUHAQEEgYEwfzBEBggrBgEFBQcwAoY4aHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvZ3Nyc2FvdnNzbGNhMjAxOC5jcnQwNwYIKwYBBQUHMAGGK2h0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzcnNhb3Zzc2xjYTIwMTgwVgYDVR0gBE8wTTBBBgkrBgEEAaAyARQwNDAyBggrBgEFBQcCARYmaHR0cHM6Ly93d3cuZ2xvYmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wCAYGZ4EMAQICMAkGA1UdEwQCMAAwggLKBgNVHREEggLBMIICvYIIKi5qZC5jb22CBiouMy5jboIMKi4zNjBidXkuY29tgg8qLjM2MGJ1eWltZy5jb22CDCouN2ZyZXNoLmNvbYINKi5iYWl0aWFvLmNvbYILKi5jYWl5dS5jb22CEiouY2hpbmFiYW5rLmNvbS5jboIKKi5lLmpkLmNvbYIKKi5qZC5jby50aIIHKi5qZC5oa4IHKi5qZC5pZIIHKi5qZC5ydYILKi5qZHBheS5jb22CCSouamR4LmNvbYIMKi5qb3lidXkuY29tggsqLmpveWJ1eS5lc4ILKi5qci5qZC5jb22CCiouay5qZC5jb22CDioua21hbGwuamQuY29tggoqLm0uamQuY29tgg4qLm0ucGFpcGFpLmNvbYILKi5tLnloZC5jb22CCyoub2N3bXMuY29tggwqLnBhaXBhaS5jb22CDSouc2hvcC5qZC5jb22CDSoudG9wbGlmZS5jb22CDSoud2FuZ3lpbi5jb22CCSoueWhkLmNvbYISKi55aWhhb2RpYW5pbWcuY29tgg0qLnlpeWFvamQuY29tgg4qLnlpemhpdG91LmNvbYIEMy5jboIKMzYwYnV5LmNvbYINMzYwYnV5aW1nLmNvbYIKN2ZyZXNoLmNvbYILYmFpdGlhby5jb22CCWNhaXl1LmNvbYIQY2hpbmFiYW5rLmNvbS5jboIIamQuY28udGiCBWpkLmhrggVqZC5pZIIFamQucnWCCWpkcGF5LmNvbYIHamR4LmNvbYIKam95YnV5LmNvbYIJam95YnV5LmVzgglvY3dtcy5jb22CCnBhaXBhaS5jb22CC3RvcGxpZmUuY29tggt3YW5neWluLmNvbYIHeWhkLmNvbYIQeWloYW9kaWFuaW1nLmNvbYILeWl5YW9qZC5jb22CDHlpemhpdG91LmNvbYIGamQuY29tMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAfBgNVHSMEGDAWgBT473/yzXhnqN5vjySNiPGHAwKz6zAdBgNVHQ4EFgQU69HbAq922jZayl6dpC3k0z2350owggF7BgorBgEEAdZ5AgQCBIIBawSCAWcBZQB2AG9Tdqwx8DEZ2JkApFEV/3cVHBHZAsEAKQaNsgiaN9kTAAABa8/xRTgAAAQDAEcwRQIgKG674unWu26NSs4F5x19Vt71IGZh1PexGzRoyscnwcsCIQDxdaGcswcm2q4AGJY+JtS3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"

    .line 2
    .line 3
    return-object v0
.end method

.method public static getStringSharePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/osec/nativelib/utils/CommonTools;->getDefaultSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    return-object p2
.end method

.method public static isOvertime20min(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/osec/nativelib/utils/CommonTools;->getCurrentTime()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    sub-long/2addr v1, v3

    .line 26
    const-wide/32 v3, 0xafc80

    .line 27
    .line 28
    .line 29
    cmp-long p0, v1, v3

    .line 30
    .line 31
    if-lez p0, :cond_1

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_1
    return v0
.end method

.method public static putStringSharePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/osec/nativelib/utils/CommonTools;->getDefaultSharePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    return-void
.end method
