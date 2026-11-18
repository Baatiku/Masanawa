.class public final Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment$b;
.super Ljava/lang/Object;
.source "KycSetAddressComponentsFragment.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;->W0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "team/opay/pay/kyc/base/KycSetAddressComponentsFragment$b",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "",
        "onPreDraw",
        "()Z",
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
.field public final synthetic a:Lgza;

.field public final synthetic b:Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;


# direct methods
.method public constructor <init>(Lgza;Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment$b;->a:Lgza;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment$b;->b:Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment$b;->a:Lgza;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgza;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment$b;->b:Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;->y0(Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment$b;->b:Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-static {v0, v1}, Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;->x0(Lteam/opay/pay/kyc/base/KycSetAddressComponentsFragment;Z)V

    .line 24
    .line 25
    .line 26
    return v1
.end method
