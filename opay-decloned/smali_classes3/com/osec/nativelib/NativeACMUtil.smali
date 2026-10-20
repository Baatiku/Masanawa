.class public Lcom/osec/nativelib/NativeACMUtil;
.super Ljava/lang/Object;
.source "NativeACMUtil.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/osec/nativelib/NativeACMUtil;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static native NativeCheckCameraHook(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public static native NativeGetACMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)[B
.end method

.method public static native NativeGetAccessFlags(Ljava/lang/Object;I)[B
.end method

.method public static native NativeGetAccessFlagsOffset(Ljava/lang/Object;III)[B
.end method

.method public static native NativeGetCInfo(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native NativeGetIntegrityCheckData(Landroid/content/Context;Z)Ljava/lang/String;
.end method

.method public static native NativeGetMethodStatus(Ljava/lang/Object;I)I
.end method

.method public static native NativeGetOSecInfoSec(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native NativeInitACMsg()I
.end method

.method public static native NativeMethodSize(Ljava/lang/Object;Ljava/lang/Object;)[B
.end method

.method public static native NativePerformAccessibilityAction(ILjava/lang/Object;ILjava/lang/Object;)Z
.end method

.method public static native NativeSetCheckAccessibility(Ljava/lang/Object;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)[B
.end method

.method public static native NativeonInitializeAccessibilityNodeInfo(ILjava/lang/Object;Ljava/lang/Object;)[B
.end method

.method public static native OSecNativeGetACMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)[B
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/osec/nativelib/NativeACMUtil;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method
