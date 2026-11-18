.class public final Lteam/opay/business/pin/PayPinInputFragment$b;
.super Ljava/lang/Object;
.source "PayPinInputFragment.kt"

# interfaces
.implements Lteam/opay/core/widget/FixCodeInputField$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/pin/PayPinInputFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/business/pin/PayPinInputFragment$b",
        "Lteam/opay/core/widget/FixCodeInputField$a;",
        "",
        "verifyCode",
        "",
        "isComplete",
        "",
        "a",
        "(Ljava/lang/String;Z)V",
        "business-pin_release"
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
.field public final synthetic a:Lteam/opay/business/pin/PayPinInputFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/pin/PayPinInputFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/pin/PayPinInputFragment$b;->a:Lteam/opay/business/pin/PayPinInputFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, "verifyCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/business/pin/PayPinInputFragment$b;->a:Lteam/opay/business/pin/PayPinInputFragment;

    .line 7
    .line 8
    invoke-static {p1}, Lteam/opay/business/pin/PayPinInputFragment;->b0(Lteam/opay/business/pin/PayPinInputFragment;)Lm52;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p1, p1, Lm52;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    const-string v0, "tvError"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lteam/opay/business/pin/PayPinInputFragment$b;->a:Lteam/opay/business/pin/PayPinInputFragment;

    .line 25
    .line 26
    invoke-static {p1}, Lteam/opay/business/pin/PayPinInputFragment;->a0(Lteam/opay/business/pin/PayPinInputFragment;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
