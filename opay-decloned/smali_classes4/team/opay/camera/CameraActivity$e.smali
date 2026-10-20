.class public final Lteam/opay/camera/CameraActivity$e;
.super Ljava/lang/Object;
.source "CameraActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/camera/CameraActivity;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lteam/opay/camera/CameraActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/camera/CameraActivity$e;->a:Lteam/opay/camera/CameraActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p1, Lrs;->a:Lrs;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v1, "ocamera_camera_take_photo_click"

    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Lrs;->a(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/camera/CameraActivity$e;->a:Lteam/opay/camera/CameraActivity;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/camera/CameraActivity;->F(Lteam/opay/camera/CameraActivity;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lteam/opay/camera/CameraActivity$e;->a:Lteam/opay/camera/CameraActivity;

    .line 20
    .line 21
    invoke-static {p1}, Lteam/opay/camera/CameraActivity;->P(Lteam/opay/camera/CameraActivity;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
