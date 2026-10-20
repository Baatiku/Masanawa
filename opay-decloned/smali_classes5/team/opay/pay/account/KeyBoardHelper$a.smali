.class public final Lteam/opay/pay/account/KeyBoardHelper$a;
.super Ljava/lang/Object;
.source "KeyBoardHelper.kt"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/account/KeyBoardHelper;-><init>(Landroid/inputmethodservice/KeyboardView;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLt1b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0015\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "team/opay/pay/account/KeyBoardHelper$a",
        "Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;",
        "",
        "swipeUp",
        "()V",
        "swipeRight",
        "swipeLeft",
        "swipeDown",
        "",
        "text",
        "onText",
        "(Ljava/lang/CharSequence;)V",
        "",
        "primaryCode",
        "onRelease",
        "(I)V",
        "onPress",
        "",
        "keyCodes",
        "onKey",
        "(I[I)V",
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
.field public final synthetic a:Lteam/opay/pay/account/KeyBoardHelper;


# direct methods
.method public constructor <init>(Lteam/opay/pay/account/KeyBoardHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/KeyBoardHelper$a;->a:Lteam/opay/pay/account/KeyBoardHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 3

    .line 1
    const-string v0, "keyCodes"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lteam/opay/pay/account/KeyBoardHelper$a;->a:Lteam/opay/pay/account/KeyBoardHelper;

    .line 7
    .line 8
    invoke-virtual {p2}, Lteam/opay/pay/account/KeyBoardHelper;->e()Landroid/widget/EditText;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p2, :cond_5

    .line 13
    .line 14
    iget-object p2, p0, Lteam/opay/pay/account/KeyBoardHelper$a;->a:Lteam/opay/pay/account/KeyBoardHelper;

    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/pay/account/KeyBoardHelper;->g()Landroid/inputmethodservice/KeyboardView;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p2, p0, Lteam/opay/pay/account/KeyBoardHelper$a;->a:Lteam/opay/pay/account/KeyBoardHelper;

    .line 24
    .line 25
    invoke-virtual {p2}, Lteam/opay/pay/account/KeyBoardHelper;->e()Landroid/widget/EditText;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper$a;->a:Lteam/opay/pay/account/KeyBoardHelper;

    .line 34
    .line 35
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->e()Landroid/widget/EditText;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/16 v1, -0xa

    .line 44
    .line 45
    if-eq p1, v1, :cond_5

    .line 46
    .line 47
    const/4 v1, -0x5

    .line 48
    const/4 v2, 0x0

    .line 49
    if-eq p1, v1, :cond_3

    .line 50
    .line 51
    const/4 v1, -0x3

    .line 52
    if-eq p1, v1, :cond_2

    .line 53
    .line 54
    int-to-char p1, p1

    .line 55
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-lez v1, :cond_1

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    :cond_1
    if-eqz v2, :cond_5

    .line 67
    .line 68
    invoke-interface {p2, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object p1, p0, Lteam/opay/pay/account/KeyBoardHelper$a;->a:Lteam/opay/pay/account/KeyBoardHelper;

    .line 73
    .line 74
    invoke-virtual {p1}, Lteam/opay/pay/account/KeyBoardHelper;->g()Landroid/inputmethodservice/KeyboardView;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const/16 p2, 0x8

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    if-eqz p2, :cond_5

    .line 85
    .line 86
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-lez p1, :cond_5

    .line 91
    .line 92
    if-lez v0, :cond_5

    .line 93
    .line 94
    iget-object p1, p0, Lteam/opay/pay/account/KeyBoardHelper$a;->a:Lteam/opay/pay/account/KeyBoardHelper;

    .line 95
    .line 96
    invoke-virtual {p1}, Lteam/opay/pay/account/KeyBoardHelper;->h()Lkotlin/jvm/functions/Function0;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Ljava/lang/Boolean;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    :cond_4
    if-nez v2, :cond_5

    .line 113
    .line 114
    add-int/lit8 p1, v0, -0x1

    .line 115
    .line 116
    invoke-interface {p2, p1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 117
    .line 118
    .line 119
    :cond_5
    :goto_0
    return-void
.end method

.method public onPress(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRelease(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .line 1
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .line 1
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .line 1
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .line 1
    return-void
.end method
