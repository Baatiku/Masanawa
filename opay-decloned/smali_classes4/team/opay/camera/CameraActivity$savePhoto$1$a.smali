.class public final Lteam/opay/camera/CameraActivity$savePhoto$1$a;
.super Ljava/lang/Object;
.source "CameraActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/camera/CameraActivity$savePhoto$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/camera/CameraActivity$savePhoto$1;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lteam/opay/camera/CameraActivity$savePhoto$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/camera/CameraActivity$savePhoto$1$a;->a:Lteam/opay/camera/CameraActivity$savePhoto$1;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/camera/CameraActivity$savePhoto$1$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/camera/CameraActivity$savePhoto$1$a;->a:Lteam/opay/camera/CameraActivity$savePhoto$1;

    .line 2
    .line 3
    iget-object v0, v0, Lteam/opay/camera/CameraActivity$savePhoto$1;->this$0:Lteam/opay/camera/CameraActivity;

    .line 4
    .line 5
    new-instance v1, Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "card_image_path_param"

    .line 11
    .line 12
    iget-object v3, p0, Lteam/opay/camera/CameraActivity$savePhoto$1$a;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/camera/CameraActivity$savePhoto$1$a;->a:Lteam/opay/camera/CameraActivity$savePhoto$1;

    .line 22
    .line 23
    iget-object v0, v0, Lteam/opay/camera/CameraActivity$savePhoto$1;->this$0:Lteam/opay/camera/CameraActivity;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    return-void
.end method
