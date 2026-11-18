.class public Lcom/osec/nativelib/AntiHookManager;
.super Ljava/lang/Object;
.source "AntiHookManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AntiDebugManager"

.field private static g_camerahookArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/osec/nativelib/HookJavaMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static g_hookArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/osec/nativelib/HookJavaMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static g_locationhookArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/osec/nativelib/HookJavaMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/osec/nativelib/AntiHookManager;

.field private static javaMethoUtils:Lcom/osec/nativelib/HookJavaMethodUtils;

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    const-string v0, "getString"

    const-class v1, Landroid/content/ContentResolver;

    const-class v2, [B

    const-class v3, Landroid/hardware/Camera$PreviewCallback;

    const-string v4, "getCameraInfo"

    const-class v5, Landroid/hardware/Camera$CameraInfo;

    const-class v6, Landroid/telephony/gsm/GsmCellLocation;

    const-class v7, Landroid/location/LocationListener;

    const-class v8, Landroid/location/Criteria;

    const-class v9, Landroid/content/pm/PackageManager;

    const-class v10, Landroid/net/wifi/WifiManager;

    new-instance v16, Ljava/lang/Object;

    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    sput-object v16, Lcom/osec/nativelib/AntiHookManager;->lock:Ljava/lang/Object;

    .line 2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v13, 0x2

    const-class v17, Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v14, 0x22

    if-gt v12, v14, :cond_0

    .line 4
    new-instance v14, Lcom/osec/nativelib/HookJavaMethod;

    const-class v18, Landroid/provider/Settings$System;

    move-object/from16 v19, v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v3

    new-array v3, v13, [Ljava/lang/Class;

    aput-object v1, v3, v15

    const/4 v13, 0x1

    aput-object v17, v3, v13

    invoke-direct {v14, v15, v2, v0, v3}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v14, "putString"

    move-object/from16 v21, v4

    const/4 v13, 0x2

    new-array v4, v13, [Ljava/lang/Class;

    aput-object v17, v4, v15

    const/4 v15, 0x1

    aput-object v17, v4, v15

    invoke-direct {v2, v15, v3, v14, v4}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-string v3, "get"

    new-array v4, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v17, v4, v14

    aput-object v17, v4, v15

    const-string v15, "android.os.SystemProperties"

    invoke-direct {v2, v13, v15, v3, v4}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v13, "getSubscriberId"

    new-array v15, v14, [Ljava/lang/Class;

    const/4 v14, 0x4

    invoke-direct {v2, v14, v4, v13, v15}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v13, "getLine1Number"

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Class;

    const/4 v14, 0x5

    invoke-direct {v2, v14, v4, v13, v15}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v13, "getVoiceMailNumber"

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Class;

    const/4 v14, 0x6

    invoke-direct {v2, v14, v4, v13, v15}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v13, "getSimSerialNumber"

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Class;

    const/4 v14, 0x7

    invoke-direct {v2, v14, v4, v13, v15}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v13, "getNetworkCountryIso"

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Class;

    const/16 v14, 0x8

    invoke-direct {v2, v14, v4, v13, v15}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v13, "getNetworkOperatorName"

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Class;

    const/16 v14, 0x9

    invoke-direct {v2, v14, v4, v13, v15}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v13, "getNetworkOperator"

    move-object/from16 v22, v5

    const/4 v15, 0x0

    new-array v5, v15, [Ljava/lang/Class;

    invoke-direct {v2, v14, v4, v13, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getSimOperatorName"

    new-array v13, v15, [Ljava/lang/Class;

    const/16 v14, 0xa

    invoke-direct {v2, v14, v4, v5, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getSimOperator"

    new-array v13, v15, [Ljava/lang/Class;

    const/16 v14, 0xb

    invoke-direct {v2, v14, v4, v5, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getSimCountryIso"

    new-array v13, v15, [Ljava/lang/Class;

    const/16 v14, 0xc

    invoke-direct {v2, v14, v4, v5, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getPhoneType"

    new-array v13, v15, [Ljava/lang/Class;

    const/16 v14, 0xd

    invoke-direct {v2, v14, v4, v5, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getSimState"

    new-array v13, v15, [Ljava/lang/Class;

    const/16 v14, 0xe

    invoke-direct {v2, v14, v4, v5, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "hasIccCard"

    new-array v13, v15, [Ljava/lang/Class;

    const/16 v14, 0xf

    invoke-direct {v2, v14, v4, v5, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getNetworkType"

    new-array v13, v15, [Ljava/lang/Class;

    const/16 v14, 0x10

    invoke-direct {v2, v14, v4, v5, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getCellLocation"

    new-array v13, v15, [Ljava/lang/Class;

    const/16 v14, 0x11

    invoke-direct {v2, v14, v4, v5, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getDeviceSoftwareVersion"

    new-array v5, v15, [Ljava/lang/Class;

    const/16 v13, 0x12

    invoke-direct {v2, v13, v3, v4, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getIpAddress"

    new-array v13, v15, [Ljava/lang/Class;

    const/16 v14, 0x14

    invoke-direct {v2, v14, v4, v5, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getNetworkId"

    new-array v13, v15, [Ljava/lang/Class;

    const/16 v14, 0x15

    invoke-direct {v2, v14, v4, v5, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getSSID"

    new-array v13, v15, [Ljava/lang/Class;

    const/16 v14, 0x16

    invoke-direct {v2, v14, v4, v5, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getBSSID"

    new-array v5, v15, [Ljava/lang/Class;

    const/16 v13, 0x17

    invoke-direct {v2, v13, v3, v4, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getConnectionInfo"

    new-array v5, v15, [Ljava/lang/Class;

    const/16 v13, 0x18

    invoke-direct {v2, v13, v3, v4, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getDhcpInfo"

    new-array v5, v15, [Ljava/lang/Class;

    const/16 v13, 0x19

    invoke-direct {v2, v13, v3, v4, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getScanResults"

    new-array v5, v15, [Ljava/lang/Class;

    const/16 v10, 0x1a

    invoke-direct {v2, v10, v3, v4, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getNetworkInterfaces"

    new-array v5, v15, [Ljava/lang/Class;

    const/16 v10, 0x1b

    invoke-direct {v2, v10, v3, v4, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getHardwareAddress"

    new-array v5, v15, [Ljava/lang/Class;

    const/16 v10, 0x1c

    invoke-direct {v2, v10, v3, v4, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Landroid/net/Proxy;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v5, v15

    const/16 v10, 0x1d

    const-string v13, "getHost"

    invoke-direct {v2, v10, v3, v13, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Landroid/net/Proxy;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v5, v15

    const/16 v10, 0x1e

    const-string v13, "getPort"

    invoke-direct {v2, v10, v3, v13, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Ljava/lang/System;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "getProperty"

    new-array v10, v4, [Ljava/lang/Class;

    aput-object v17, v10, v15

    const/16 v13, 0x1f

    invoke-direct {v2, v13, v3, v5, v10}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "getInstallerPackageName"

    new-array v10, v4, [Ljava/lang/Class;

    aput-object v17, v10, v15

    const/16 v13, 0x20

    invoke-direct {v2, v13, v3, v5, v10}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    new-array v13, v10, [Ljava/lang/Class;

    aput-object v17, v13, v15

    aput-object v5, v13, v4

    const/16 v10, 0x21

    const-string v14, "getPackageInfo"

    invoke-direct {v2, v10, v3, v14, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v9, "getInstalledPackages"

    new-array v10, v4, [Ljava/lang/Class;

    aput-object v5, v10, v15

    const/16 v4, 0x22

    invoke-direct {v2, v4, v3, v9, v10}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getAbsolutePath"

    new-array v9, v15, [Ljava/lang/Class;

    const/16 v10, 0x23

    invoke-direct {v2, v10, v3, v4, v9}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getRunningTasks"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    aput-object v5, v10, v15

    const/16 v9, 0x24

    invoke-direct {v2, v9, v3, v4, v10}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getPackageName"

    new-array v9, v15, [Ljava/lang/Class;

    const/16 v10, 0x25

    invoke-direct {v2, v10, v3, v4, v9}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Ljava/lang/reflect/Modifier;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isNative"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    aput-object v5, v10, v15

    const/16 v9, 0x26

    invoke-direct {v2, v9, v3, v4, v10}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Landroid/os/Debug;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isDebuggerConnected"

    new-array v9, v15, [Ljava/lang/Class;

    const/16 v10, 0x27

    invoke-direct {v2, v10, v3, v4, v9}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getRawOffset"

    new-array v9, v15, [Ljava/lang/Class;

    const/16 v10, 0x28

    invoke-direct {v2, v10, v3, v4, v9}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getDSTSavings"

    new-array v9, v15, [Ljava/lang/Class;

    const/16 v10, 0x29

    invoke-direct {v2, v10, v3, v4, v9}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getLanguage"

    new-array v9, v15, [Ljava/lang/Class;

    const/16 v10, 0x2a

    invoke-direct {v2, v10, v3, v4, v9}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Landroid/content/Intent;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v9, "getIntent"

    const/4 v10, 0x1

    new-array v13, v10, [Ljava/lang/Class;

    aput-object v17, v13, v15

    const/16 v14, 0x2b

    invoke-direct {v2, v14, v4, v9, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v9, "getExtra"

    new-array v13, v10, [Ljava/lang/Class;

    aput-object v17, v13, v15

    const/16 v14, 0x2c

    invoke-direct {v2, v14, v4, v9, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x2

    new-array v13, v9, [Ljava/lang/Class;

    aput-object v17, v13, v15

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v14, v13, v10

    const/16 v14, 0x2d

    const-string v10, "getBooleanExtra"

    invoke-direct {v2, v14, v4, v10, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v10, v9, [Ljava/lang/Class;

    aput-object v17, v10, v15

    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x1

    aput-object v13, v10, v14

    const/16 v13, 0x2e

    const-string v14, "getByteExtra"

    invoke-direct {v2, v13, v4, v14, v10}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v10, v9, [Ljava/lang/Class;

    aput-object v17, v10, v15

    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x1

    aput-object v13, v10, v14

    const/16 v13, 0x2f

    const-string v14, "getShortExtra"

    invoke-direct {v2, v13, v4, v14, v10}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v10, v9, [Ljava/lang/Class;

    aput-object v17, v10, v15

    sget-object v13, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x1

    aput-object v13, v10, v14

    const/16 v13, 0x30

    const-string v14, "getCharExtra"

    invoke-direct {v2, v13, v4, v14, v10}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v10, "getIntExtra"

    new-array v13, v9, [Ljava/lang/Class;

    aput-object v17, v13, v15

    const/4 v14, 0x1

    aput-object v5, v13, v14

    const/16 v5, 0x31

    invoke-direct {v2, v5, v4, v10, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Class;

    aput-object v17, v5, v15

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v5, v14

    const/16 v10, 0x32

    const-string v13, "getLongExtra"

    invoke-direct {v2, v10, v4, v13, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Class;

    aput-object v17, v5, v15

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v10, v5, v14

    const/16 v10, 0x33

    const-string v13, "getFloatExtra"

    invoke-direct {v2, v10, v4, v13, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Class;

    aput-object v17, v5, v15

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v14

    const/16 v9, 0x34

    const-string v10, "getDoubleExtra"

    invoke-direct {v2, v9, v4, v10, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getStringExtra"

    new-array v5, v14, [Ljava/lang/Class;

    aput-object v17, v5, v15

    const/16 v9, 0x35

    invoke-direct {v2, v9, v3, v4, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getName"

    new-array v5, v15, [Ljava/lang/Class;

    const/16 v9, 0x39

    invoke-direct {v2, v9, v3, v4, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v2, Lcom/osec/nativelib/HookJavaMethod;

    const-class v3, Landroid/provider/Settings$Secure;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v1, v5, v15

    const/4 v1, 0x1

    aput-object v17, v5, v1

    const/16 v4, 0x3a

    invoke-direct {v2, v4, v3, v0, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v0, Lcom/osec/nativelib/HookJavaMethod;

    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    const-class v1, Landroid/app/ActivityManager$MemoryInfo;

    aput-object v1, v3, v15

    const/16 v1, 0x3b

    const-string v4, "getMemoryInfo"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Lcom/osec/nativelib/HookJavaMethod;

    const-class v1, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getBlockSize"

    new-array v4, v15, [Ljava/lang/Class;

    const/16 v5, 0x3c

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v0, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getBlockSizeLong"

    new-array v4, v15, [Ljava/lang/Class;

    const/16 v5, 0x3d

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getBlockCount"

    new-array v4, v15, [Ljava/lang/Class;

    const/16 v5, 0x3e

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v0, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getBlockCountLong"

    new-array v4, v15, [Ljava/lang/Class;

    const/16 v5, 0x3f

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getAvailableBlocks"

    new-array v4, v15, [Ljava/lang/Class;

    const/16 v5, 0x40

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v0, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAvailableBlocksLong"

    new-array v3, v15, [Ljava/lang/Class;

    const/16 v4, 0x41

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v0, Lcom/osec/nativelib/HookJavaMethod;

    const-class v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isLoopbackAddress"

    new-array v4, v15, [Ljava/lang/Class;

    const/16 v5, 0x42

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v0, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getCanonicalHostName"

    new-array v4, v15, [Ljava/lang/Class;

    const/16 v5, 0x43

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getHostAddress"

    new-array v4, v15, [Ljava/lang/Class;

    const/16 v5, 0x44

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getHostName"

    new-array v4, v15, [Ljava/lang/Class;

    const/16 v5, 0x45

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v0, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getLocalHost"

    new-array v3, v15, [Ljava/lang/Class;

    const/16 v4, 0x46

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v19, v2

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    .line 71
    :goto_0
    new-instance v0, Lcom/osec/nativelib/HookJavaMethod;

    const-class v1, Landroid/view/Display;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getWidth"

    new-array v3, v15, [Ljava/lang/Class;

    const/16 v4, 0x36

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v0, Lcom/osec/nativelib/HookJavaMethod;

    const-class v1, Landroid/view/Display;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getHeight"

    new-array v3, v15, [Ljava/lang/Class;

    const/16 v4, 0x37

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sput-object v11, Lcom/osec/nativelib/AntiHookManager;->g_hookArrayList:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    const-class v2, Landroid/location/LocationManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v8, v5, v15

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v4, v5, v9

    const-string v4, "getBestProvider"

    invoke-direct {v1, v15, v3, v4, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getLastKnownLocation"

    new-array v5, v9, [Ljava/lang/Class;

    aput-object v17, v5, v15

    invoke-direct {v1, v9, v3, v4, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Class;

    aput-object v17, v11, v15

    aput-object v4, v11, v9

    const/4 v10, 0x2

    aput-object v5, v11, v10

    const/4 v13, 0x3

    aput-object v7, v11, v13

    const-string v14, "requestLocationUpdates"

    invoke-direct {v1, v10, v3, v14, v11}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x5

    new-array v13, v11, [Ljava/lang/Class;

    aput-object v17, v13, v15

    aput-object v4, v13, v9

    aput-object v5, v13, v10

    const/4 v10, 0x3

    aput-object v7, v13, v10

    const-class v16, Landroid/os/Looper;

    const/4 v9, 0x4

    aput-object v16, v13, v9

    invoke-direct {v1, v10, v3, v14, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v13, v11, [Ljava/lang/Class;

    aput-object v4, v13, v15

    const/4 v11, 0x1

    aput-object v5, v13, v11

    const/16 v20, 0x2

    aput-object v8, v13, v20

    aput-object v7, v13, v10

    const-class v7, Landroid/os/Looper;

    aput-object v7, v13, v9

    invoke-direct {v1, v9, v3, v14, v13}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v7, v9, [Ljava/lang/Class;

    aput-object v17, v7, v15

    aput-object v4, v7, v11

    aput-object v5, v7, v20

    const-class v10, Landroid/app/PendingIntent;

    const/4 v13, 0x3

    aput-object v10, v7, v13

    const/4 v10, 0x5

    invoke-direct {v1, v10, v3, v14, v7}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Class;

    aput-object v4, v3, v15

    aput-object v5, v3, v11

    aput-object v8, v3, v20

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v3, v13

    const/4 v4, 0x6

    invoke-direct {v1, v4, v2, v14, v3}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    const-class v2, Landroid/location/Location;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getLatitude"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v7, 0x7

    invoke-direct {v1, v7, v2, v3, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    const-class v2, Landroid/location/Location;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getLongitude"

    new-array v5, v4, [Ljava/lang/Class;

    const/16 v7, 0x8

    invoke-direct {v1, v7, v2, v3, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getLac"

    new-array v5, v4, [Ljava/lang/Class;

    const/16 v7, 0x9

    invoke-direct {v1, v7, v2, v3, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x22

    if-gt v12, v1, :cond_1

    .line 85
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getCid"

    new-array v5, v4, [Ljava/lang/Class;

    const/16 v7, 0xa

    invoke-direct {v1, v7, v2, v3, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getPsc"

    new-array v5, v4, [Ljava/lang/Class;

    const/16 v6, 0xb

    invoke-direct {v1, v6, v2, v3, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    const-class v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "getBaseStationId"

    new-array v6, v4, [Ljava/lang/Class;

    const/16 v7, 0xc

    invoke-direct {v1, v7, v3, v5, v6}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "getBaseStationLatitude"

    new-array v6, v4, [Ljava/lang/Class;

    const/16 v7, 0xd

    invoke-direct {v1, v7, v3, v5, v6}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "getBaseStationLongitude"

    new-array v6, v4, [Ljava/lang/Class;

    const/16 v7, 0xe

    invoke-direct {v1, v7, v3, v5, v6}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "getSystemId"

    new-array v6, v4, [Ljava/lang/Class;

    const/16 v7, 0xf

    invoke-direct {v1, v7, v3, v5, v6}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getNetworkId"

    new-array v5, v4, [Ljava/lang/Class;

    const/16 v4, 0x10

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    sput-object v0, Lcom/osec/nativelib/AntiHookManager;->g_locationhookArrayList:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    const-class v2, Landroid/hardware/Camera;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v8, 0x1

    aput-object v22, v6, v8

    move-object/from16 v9, v21

    invoke-direct {v1, v7, v3, v9, v6}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v4, v6, v7

    aput-object v22, v6, v8

    invoke-direct {v1, v8, v3, v9, v6}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v4, v6, v7

    aput-object v22, v6, v8

    invoke-direct {v1, v5, v3, v9, v6}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "openLegacy"

    new-array v9, v5, [Ljava/lang/Class;

    aput-object v4, v9, v7

    aput-object v4, v9, v8

    const/4 v10, 0x3

    invoke-direct {v1, v10, v3, v6, v9}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "cameraInitVersion"

    new-array v9, v5, [Ljava/lang/Class;

    aput-object v4, v9, v7

    aput-object v4, v9, v8

    const/4 v5, 0x4

    invoke-direct {v1, v5, v3, v6, v9}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "cameraInitNormal"

    new-array v6, v8, [Ljava/lang/Class;

    aput-object v4, v6, v7

    const/4 v9, 0x5

    invoke-direct {v1, v9, v3, v5, v6}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Class;

    aput-object v18, v5, v7

    const-string v6, "setPreviewCallback"

    const/4 v9, 0x7

    invoke-direct {v1, v9, v3, v6, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Class;

    aput-object v18, v5, v7

    const-string v6, "setOneShotPreviewCallback"

    const/16 v9, 0x8

    invoke-direct {v1, v9, v3, v6, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Class;

    aput-object v18, v5, v7

    const-string v6, "setPreviewCallbackWithBuffer"

    const/16 v9, 0x9

    invoke-direct {v1, v9, v3, v6, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Class;

    aput-object v19, v5, v7

    const-string v6, "addCallbackBuffer"

    const/16 v9, 0xa

    invoke-direct {v1, v9, v3, v6, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x22

    if-gt v12, v1, :cond_2

    .line 104
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Class;

    aput-object v19, v5, v7

    const-string v6, "addRawImageCallbackBuffer"

    const/16 v9, 0xb

    invoke-direct {v1, v9, v3, v6, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v19, v6, v7

    aput-object v4, v6, v8

    const-string v5, "addCallbackBuffer"

    const/16 v9, 0xc

    invoke-direct {v1, v9, v3, v5, v6}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v7

    aput-object v4, v5, v8

    const/4 v7, 0x2

    aput-object v4, v5, v7

    const/4 v7, 0x3

    aput-object v4, v5, v7

    const/4 v8, 0x4

    aput-object v6, v5, v8

    const-string v6, "postEventFromNative"

    const/16 v8, 0xf

    invoke-direct {v1, v8, v3, v6, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/Class;

    const-class v6, Landroid/hardware/Camera$ShutterCallback;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/hardware/Camera$PictureCallback;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-string v6, "takePicture"

    const/16 v9, 0x10

    invoke-direct {v1, v9, v3, v6, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Landroid/hardware/Camera$FaceDetectionListener;

    aput-object v6, v5, v7

    const/16 v6, 0x12

    const-string v8, "setFaceDetectionListener"

    invoke-direct {v1, v6, v3, v8, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "stopFaceDetection"

    new-array v6, v7, [Ljava/lang/Class;

    const/16 v8, 0x14

    invoke-direct {v1, v8, v3, v5, v6}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "setParameters"

    const-class v6, Landroid/hardware/Camera$Parameters;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    aput-object v6, v9, v7

    const/16 v8, 0x15

    invoke-direct {v1, v8, v3, v5, v9}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "getParameters"

    new-array v8, v7, [Ljava/lang/Class;

    const/16 v9, 0x16

    invoke-direct {v1, v9, v3, v5, v8}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "getEmptyParameters"

    new-array v8, v7, [Ljava/lang/Class;

    const/16 v9, 0x17

    invoke-direct {v1, v9, v3, v5, v8}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "getParametersCopy"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    aput-object v6, v9, v7

    const/16 v8, 0x18

    invoke-direct {v1, v8, v3, v5, v9}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "getSupportedPreviewSizes"

    new-array v8, v7, [Ljava/lang/Class;

    const/16 v9, 0x19

    invoke-direct {v1, v9, v3, v5, v8}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "getPreviewSize"

    new-array v8, v7, [Ljava/lang/Class;

    const/16 v9, 0x1a

    invoke-direct {v1, v9, v3, v5, v8}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "get"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    aput-object v17, v9, v7

    const/16 v10, 0x1b

    invoke-direct {v1, v10, v3, v5, v9}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "getInt"

    new-array v9, v8, [Ljava/lang/Class;

    aput-object v17, v9, v7

    const/16 v10, 0x1c

    invoke-direct {v1, v10, v3, v5, v9}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "setPreviewSize"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Class;

    aput-object v4, v10, v7

    aput-object v4, v10, v8

    const/16 v11, 0x1d

    invoke-direct {v1, v11, v3, v5, v10}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "set"

    new-array v10, v9, [Ljava/lang/Class;

    aput-object v17, v10, v7

    aput-object v17, v10, v8

    const/16 v11, 0x1e

    invoke-direct {v1, v11, v3, v5, v10}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "set"

    new-array v6, v9, [Ljava/lang/Class;

    aput-object v17, v6, v7

    aput-object v4, v6, v8

    const/16 v10, 0x1f

    invoke-direct {v1, v10, v3, v5, v6}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v9, 0x2

    .line 121
    :goto_1
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Landroid/renderscript/RenderScript;

    aput-object v6, v5, v7

    aput-object v4, v5, v8

    const-string v4, "createPreviewAllocation"

    const/16 v6, 0xd

    invoke-direct {v1, v6, v3, v4, v5}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Lcom/osec/nativelib/HookJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Landroid/renderscript/Allocation;

    aput-object v4, v3, v7

    const-string v4, "setPreviewCallbackAllocation"

    const/16 v5, 0xe

    invoke-direct {v1, v5, v2, v4, v3}, Lcom/osec/nativelib/HookJavaMethod;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sput-object v0, Lcom/osec/nativelib/AntiHookManager;->g_camerahookArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/osec/nativelib/HookJavaMethodUtils;->newInstance(Landroid/content/Context;)Lcom/osec/nativelib/HookJavaMethodUtils;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sput-object p1, Lcom/osec/nativelib/AntiHookManager;->javaMethoUtils:Lcom/osec/nativelib/HookJavaMethodUtils;

    .line 9
    .line 10
    return-void
.end method

.method private static checkCameraMethodHooked(Ljava/util/ArrayList;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/osec/nativelib/HookJavaMethod;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Lcom/osec/nativelib/HookJavaMethod;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/osec/nativelib/HookJavaMethod;->getHooked()I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/osec/nativelib/HookJavaMethod;->getHooked()I

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :catch_0
    :cond_0
    return v0
.end method

.method public static checkJavaMethodHooked()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/osec/nativelib/AntiHookManager;->getHookArrayList()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/osec/nativelib/AntiHookManager;->checkMethodHooked(Ljava/util/ArrayList;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static checkLocationJavaMethodHooked()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/osec/nativelib/AntiHookManager;->getLocationHookArrayList()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/osec/nativelib/AntiHookManager;->checkMethodHooked(Ljava/util/ArrayList;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private static checkMethodHooked(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/osec/nativelib/HookJavaMethod;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/osec/nativelib/HookJavaMethod;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/osec/nativelib/HookJavaMethod;->getHooked()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return v0
.end method

.method private static getCameraMethodHookedList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/osec/nativelib/JavaMethod;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/osec/nativelib/HookJavaMethod;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ge v2, v3, :cond_1

    .line 21
    .line 22
    new-instance v3, Lcom/osec/nativelib/HookJavaMethod;

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/osec/nativelib/JavaMethod;

    .line 29
    .line 30
    invoke-direct {v3, v4}, Lcom/osec/nativelib/HookJavaMethod;-><init>(Lcom/osec/nativelib/JavaMethod;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object v1, Lcom/osec/nativelib/AntiHookManager;->g_camerahookArrayList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_0
    const/4 v1, 0x0

    .line 43
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 44
    .line 45
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-ge v0, p0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lcom/osec/nativelib/HookJavaMethod;

    .line 56
    .line 57
    sget-object v2, Lcom/osec/nativelib/AntiHookManager;->javaMethoUtils:Lcom/osec/nativelib/HookJavaMethodUtils;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/osec/nativelib/HookJavaMethod;->className:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v4, p0, Lcom/osec/nativelib/HookJavaMethod;->methodName:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v5, p0, Lcom/osec/nativelib/HookJavaMethod;->parameterTypes:[Ljava/lang/Class;

    .line 64
    .line 65
    invoke-virtual {v2, v3, v4, v5}, Lcom/osec/nativelib/HookJavaMethodUtils;->IsHooked(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {p0, v2}, Lcom/osec/nativelib/HookJavaMethod;->setHooked(I)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    return-object v1
.end method

.method private static getHookArrayList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/osec/nativelib/HookJavaMethod;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/osec/nativelib/AntiHookManager;->g_hookArrayList:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/osec/nativelib/AntiHookManager;->g_hookArrayList:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/osec/nativelib/HookJavaMethod;

    .line 17
    .line 18
    sget-object v2, Lcom/osec/nativelib/AntiHookManager;->javaMethoUtils:Lcom/osec/nativelib/HookJavaMethodUtils;

    .line 19
    .line 20
    iget-object v3, v1, Lcom/osec/nativelib/HookJavaMethod;->className:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, v1, Lcom/osec/nativelib/HookJavaMethod;->methodName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v5, v1, Lcom/osec/nativelib/HookJavaMethod;->parameterTypes:[Ljava/lang/Class;

    .line 25
    .line 26
    invoke-virtual {v2, v3, v4, v5}, Lcom/osec/nativelib/HookJavaMethodUtils;->IsHooked(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Lcom/osec/nativelib/HookJavaMethod;->setHooked(I)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object v0, Lcom/osec/nativelib/AntiHookManager;->g_hookArrayList:Ljava/util/ArrayList;

    .line 37
    .line 38
    return-object v0
.end method

.method private static getLocationHookArrayList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/osec/nativelib/HookJavaMethod;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/osec/nativelib/AntiHookManager;->g_locationhookArrayList:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/osec/nativelib/AntiHookManager;->g_locationhookArrayList:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/osec/nativelib/HookJavaMethod;

    .line 17
    .line 18
    sget-object v2, Lcom/osec/nativelib/AntiHookManager;->javaMethoUtils:Lcom/osec/nativelib/HookJavaMethodUtils;

    .line 19
    .line 20
    iget-object v3, v1, Lcom/osec/nativelib/HookJavaMethod;->className:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, v1, Lcom/osec/nativelib/HookJavaMethod;->methodName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v5, v1, Lcom/osec/nativelib/HookJavaMethod;->parameterTypes:[Ljava/lang/Class;

    .line 25
    .line 26
    invoke-virtual {v2, v3, v4, v5}, Lcom/osec/nativelib/HookJavaMethodUtils;->IsHooked(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Lcom/osec/nativelib/HookJavaMethod;->setHooked(I)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object v0, Lcom/osec/nativelib/AntiHookManager;->g_locationhookArrayList:Ljava/util/ArrayList;

    .line 37
    .line 38
    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/osec/nativelib/AntiHookManager;
    .locals 2

    .line 1
    const-string v0, "AntiDebugManager"

    .line 2
    .line 3
    const-string v1, "AntiHookManager newInstance"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/osec/nativelib/utils/OpayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/osec/nativelib/AntiHookManager;->instance:Lcom/osec/nativelib/AntiHookManager;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/osec/nativelib/AntiHookManager;->lock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/osec/nativelib/AntiHookManager;->instance:Lcom/osec/nativelib/AntiHookManager;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Lcom/osec/nativelib/AntiHookManager;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/osec/nativelib/AntiHookManager;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/osec/nativelib/AntiHookManager;->instance:Lcom/osec/nativelib/AntiHookManager;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    goto :goto_2

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0

    .line 33
    :cond_1
    :goto_2
    sget-object p0, Lcom/osec/nativelib/AntiHookManager;->instance:Lcom/osec/nativelib/AntiHookManager;

    .line 34
    .line 35
    return-object p0
.end method
