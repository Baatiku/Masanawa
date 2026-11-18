.class public final Lteam/opay/pay/android/views/NoticeAmountInputText$a;
.super Lteam/opay/core/android/views/SafeDelayedTextWatcher;
.source "NoticeAmountInputText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/android/views/NoticeAmountInputText;-><init>(Landroid/content/Context;)V
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
        "team/opay/pay/android/views/NoticeAmountInputText$a",
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
.field public final synthetic e:Lteam/opay/pay/android/views/NoticeAmountInputText;


# direct methods
.method public constructor <init>(Lag8;Lteam/opay/pay/android/views/NoticeAmountInputText;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lteam/opay/pay/android/views/NoticeAmountInputText$a;->e:Lteam/opay/pay/android/views/NoticeAmountInputText;

    .line 2
    .line 3
    const-wide/16 v0, 0x12c

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1}, Lteam/opay/core/android/views/SafeDelayedTextWatcher;-><init>(Lag8;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Landroid/text/Editable;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lteam/opay/pay/android/views/NoticeAmountInputText$a;->e:Lteam/opay/pay/android/views/NoticeAmountInputText;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/android/views/NoticeAmountInputText$a;->e:Lteam/opay/pay/android/views/NoticeAmountInputText;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    const-string v1, ","

    .line 27
    .line 28
    const-string v2, ""

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    :goto_0
    if-nez p1, :cond_2

    .line 38
    .line 39
    const-string p1, ""

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/android/views/NoticeAmountInputText$a;->e:Lteam/opay/pay/android/views/NoticeAmountInputText;

    .line 42
    .line 43
    invoke-virtual {v0}, Lteam/opay/pay/android/views/NoticeAmountInputText;->getOnAmountMaskChangeListener()Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-static {p1}, Ljmf;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method
