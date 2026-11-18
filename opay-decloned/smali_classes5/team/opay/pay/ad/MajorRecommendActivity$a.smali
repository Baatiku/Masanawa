.class public final Lteam/opay/pay/ad/MajorRecommendActivity$a;
.super Ljava/lang/Object;
.source "MajorRecommendActivity.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/ad/MajorRecommendActivity;->initView()V
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
        "team/opay/pay/ad/MajorRecommendActivity$a",
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
.field public final synthetic a:Lteam/opay/pay/ad/MajorRecommendActivity;

.field public final synthetic b:Lteam/opay/pay/ad/MajorRecommendFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/ad/MajorRecommendActivity;Lteam/opay/pay/ad/MajorRecommendFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/ad/MajorRecommendActivity$a;->a:Lteam/opay/pay/ad/MajorRecommendActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/ad/MajorRecommendActivity$a;->b:Lteam/opay/pay/ad/MajorRecommendFragment;

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
    iget-object v0, p0, Lteam/opay/pay/ad/MajorRecommendActivity$a;->a:Lteam/opay/pay/ad/MajorRecommendActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/ad/MajorRecommendActivity;->E()Lnwa;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lnwa;->c:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lteam/opay/pay/ad/MajorRecommendActivity$a;->b:Lteam/opay/pay/ad/MajorRecommendFragment;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {v1, v0}, Lteam/opay/pay/ad/MajorRecommendFragment;->F(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method
