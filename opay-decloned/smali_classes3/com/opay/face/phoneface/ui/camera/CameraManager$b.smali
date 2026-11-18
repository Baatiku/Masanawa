.class public Lcom/opay/face/phoneface/ui/camera/CameraManager$b;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opay/face/phoneface/ui/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/opay/face/phoneface/ui/camera/CameraManager;


# direct methods
.method public constructor <init>(Lcom/opay/face/phoneface/ui/camera/CameraManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager$b;->a:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/opay/face/phoneface/ui/camera/CameraManager;Lcom/opay/face/phoneface/ui/camera/CameraManager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/opay/face/phoneface/ui/camera/CameraManager$b;-><init>(Lcom/opay/face/phoneface/ui/camera/CameraManager;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/opay/face/phoneface/ui/camera/CameraManager$b;->a:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->a(Lcom/opay/face/phoneface/ui/camera/CameraManager;[B)[B

    .line 4
    .line 5
    .line 6
    return-void
.end method
