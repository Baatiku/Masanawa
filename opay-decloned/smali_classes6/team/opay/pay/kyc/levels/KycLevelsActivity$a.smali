.class public final Lteam/opay/pay/kyc/levels/KycLevelsActivity$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "KycLevelsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/levels/KycLevelsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/pay/kyc/levels/KycLevelsActivity$a",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "",
        "position",
        "",
        "onPageSelected",
        "(I)V",
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
.field public final synthetic a:Lteam/opay/pay/kyc/levels/KycLevelsActivity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/levels/KycLevelsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/levels/KycLevelsActivity$a;->a:Lteam/opay/pay/kyc/levels/KycLevelsActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/levels/KycLevelsActivity$a;->a:Lteam/opay/pay/kyc/levels/KycLevelsActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/kyc/levels/KycLevelsActivity;->O()Lef;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lef;->f:Lcom/opay/team/newhome/home/balance/HomeIndicatorView;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/opay/team/newhome/home/balance/HomeIndicatorView;->setSelectPosition(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
