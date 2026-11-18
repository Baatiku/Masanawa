.class public final Lteam/opay/pay/payment/giftcard/OpaySearchView$a;
.super Lteam/opay/core/android/views/SafeDelayedTextWatcher;
.source "OpaySearchView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/giftcard/OpaySearchView;->d(Lag8;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/pay/payment/giftcard/OpaySearchView$a",
        "Lteam/opay/core/android/views/SafeDelayedTextWatcher;",
        "Landroid/text/Editable;",
        "s",
        "",
        "b",
        "(Landroid/text/Editable;)V",
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
.field public final synthetic e:Lteam/opay/pay/payment/giftcard/OpaySearchView;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lag8;Lteam/opay/pay/payment/giftcard/OpaySearchView;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Lteam/opay/pay/payment/giftcard/OpaySearchView;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lteam/opay/pay/payment/giftcard/OpaySearchView$a;->e:Lteam/opay/pay/payment/giftcard/OpaySearchView;

    .line 2
    .line 3
    iput-object p3, p0, Lteam/opay/pay/payment/giftcard/OpaySearchView$a;->f:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v5, 0x0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    invoke-direct/range {v0 .. v5}, Lteam/opay/core/android/views/SafeDelayedTextWatcher;-><init>(Lag8;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public b(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lteam/opay/pay/payment/giftcard/OpaySearchView$a;->e:Lteam/opay/pay/payment/giftcard/OpaySearchView;

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/pay/payment/giftcard/OpaySearchView;->b(Lteam/opay/pay/payment/giftcard/OpaySearchView;)Ltsa;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Ltsa;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    const-string v0, "icClose"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/OpaySearchView$a;->e:Lteam/opay/pay/payment/giftcard/OpaySearchView;

    .line 15
    .line 16
    invoke-static {v0}, Lteam/opay/pay/payment/giftcard/OpaySearchView;->b(Lteam/opay/pay/payment/giftcard/OpaySearchView;)Ltsa;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Ltsa;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 39
    :goto_1
    xor-int/2addr v0, v1

    .line 40
    invoke-static {p1, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lteam/opay/pay/payment/giftcard/OpaySearchView$a;->f:Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/OpaySearchView$a;->e:Lteam/opay/pay/payment/giftcard/OpaySearchView;

    .line 46
    .line 47
    invoke-static {v0}, Lteam/opay/pay/payment/giftcard/OpaySearchView;->b(Lteam/opay/pay/payment/giftcard/OpaySearchView;)Ltsa;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v0, v0, Ltsa;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    return-void
.end method
