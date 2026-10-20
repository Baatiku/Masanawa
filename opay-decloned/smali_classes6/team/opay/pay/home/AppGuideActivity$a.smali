.class public final Lteam/opay/pay/home/AppGuideActivity$a;
.super Ljava/lang/Object;
.source "AppGuideActivity.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/AppGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "team/opay/pay/home/AppGuideActivity$a",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "",
        "onGlobalLayout",
        "()V",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/home/AppGuideActivity;

.field public final synthetic b:Lcom/opay/team/newhome/appguide/AppGuideFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/AppGuideActivity;Lcom/opay/team/newhome/appguide/AppGuideFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/AppGuideActivity$a;->a:Lteam/opay/pay/home/AppGuideActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/AppGuideActivity$a;->b:Lcom/opay/team/newhome/appguide/AppGuideFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/AppGuideActivity$a;->a:Lteam/opay/pay/home/AppGuideActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/home/AppGuideActivity;->F()Lcia;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcia;->b:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/pay/home/AppGuideActivity$a;->b:Lcom/opay/team/newhome/appguide/AppGuideFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {v1, v0}, Lcom/opay/team/newhome/appguide/AppGuideFragment;->F(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
