.class public final Lteam/opay/pay/payment/airtimeMobileData/CustomVPInner$a;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "CustomVPInner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/airtimeMobileData/CustomVPInner;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\'\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "team/opay/pay/payment/airtimeMobileData/CustomVPInner$a",
        "Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;",
        "",
        "position",
        "",
        "positionOffset",
        "positionOffsetPixels",
        "",
        "onPageScrolled",
        "(IFI)V",
        "state",
        "onPageScrollStateChanged",
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
.field public final synthetic a:Lteam/opay/pay/payment/airtimeMobileData/CustomVPInner;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/airtimeMobileData/CustomVPInner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeMobileData/CustomVPInner$a;->a:Lteam/opay/pay/payment/airtimeMobileData/CustomVPInner;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeMobileData/CustomVPInner$a;->a:Lteam/opay/pay/payment/airtimeMobileData/CustomVPInner;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 1
    return-void
.end method
