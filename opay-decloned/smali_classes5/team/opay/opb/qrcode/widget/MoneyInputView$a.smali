.class public final Lteam/opay/opb/qrcode/widget/MoneyInputView$a;
.super Lteam/opay/core/widget/internal/OnInputCallback;
.source "MoneyInputView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/widget/MoneyInputView;->o(Lteam/opay/core/widget/keyboard/NumericKeyboardView;ILkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "team/opay/opb/qrcode/widget/MoneyInputView$a",
        "Lteam/opay/core/widget/internal/OnInputCallback;",
        "",
        "num",
        "",
        "e",
        "(I)V",
        "",
        "point",
        "g",
        "(Ljava/lang/String;)V",
        "a",
        "()V",
        "c",
        "opay-qrcode_release"
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
.field public final synthetic a:Lteam/opay/opb/qrcode/widget/MoneyInputView;

.field public final synthetic b:I

.field public final synthetic c:Lteam/opay/core/widget/keyboard/NumericKeyboardView;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/widget/MoneyInputView;ILteam/opay/core/widget/keyboard/NumericKeyboardView;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/qrcode/widget/MoneyInputView;",
            "I",
            "Lteam/opay/core/widget/keyboard/NumericKeyboardView;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/widget/MoneyInputView$a;->a:Lteam/opay/opb/qrcode/widget/MoneyInputView;

    .line 2
    .line 3
    iput p2, p0, Lteam/opay/opb/qrcode/widget/MoneyInputView$a;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/opb/qrcode/widget/MoneyInputView$a;->c:Lteam/opay/core/widget/keyboard/NumericKeyboardView;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/opb/qrcode/widget/MoneyInputView$a;->d:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-direct {p0}, Lteam/opay/core/widget/internal/OnInputCallback;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/widget/MoneyInputView$a;->a:Lteam/opay/opb/qrcode/widget/MoneyInputView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/widget/MoneyInputView;->getEtInput()Lteam/opay/opb/qrcode/widget/NoPasteEditText;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/opb/qrcode/widget/MoneyInputView$a;->a:Lteam/opay/opb/qrcode/widget/MoneyInputView;

    .line 14
    .line 15
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/widget/MoneyInputView;->getEtInput()Lteam/opay/opb/qrcode/widget/NoPasteEditText;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/widget/MoneyInputView;->getEtInput()Lteam/opay/opb/qrcode/widget/NoPasteEditText;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eq v2, v3, :cond_0

    .line 32
    .line 33
    invoke-static {v1, v0, v2, v3}, Lteam/opay/opb/qrcode/widget/MoneyInputView;->j(Lteam/opay/opb/qrcode/widget/MoneyInputView;Landroid/text/Editable;II)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    if-lez v2, :cond_1

    .line 38
    .line 39
    add-int/lit8 v3, v2, -0x1

    .line 40
    .line 41
    invoke-static {v1, v0, v3, v2}, Lteam/opay/opb/qrcode/widget/MoneyInputView;->j(Lteam/opay/opb/qrcode/widget/MoneyInputView;Landroid/text/Editable;II)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/widget/MoneyInputView$a;->a:Lteam/opay/opb/qrcode/widget/MoneyInputView;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/qrcode/widget/MoneyInputView$a;->c:Lteam/opay/core/widget/keyboard/NumericKeyboardView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/widget/MoneyInputView;->n(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/opb/qrcode/widget/MoneyInputView$a;->d:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 13

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/widget/MoneyInputView$a;->a:Lteam/opay/opb/qrcode/widget/MoneyInputView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/widget/MoneyInputView;->getEtInput()Lteam/opay/opb/qrcode/widget/NoPasteEditText;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/opb/qrcode/widget/MoneyInputView$a;->a:Lteam/opay/opb/qrcode/widget/MoneyInputView;

    .line 14
    .line 15
    iget v2, p0, Lteam/opay/opb/qrcode/widget/MoneyInputView$a;->b:I

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-static {v1}, Lteam/opay/opb/qrcode/widget/MoneyInputView;->h(Lteam/opay/opb/qrcode/widget/MoneyInputView;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const/4 v8, 0x6

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    move-object v4, v3

    .line 47
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/widget/MoneyInputView;->getEtInput()Lteam/opay/opb/qrcode/widget/NoPasteEditText;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    const/4 v6, -0x1

    .line 60
    if-eq v4, v6, :cond_1

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    add-int/lit8 v7, v7, -0x3

    .line 67
    .line 68
    if-ne v4, v7, :cond_1

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-ne v5, v3, :cond_1

    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    if-eq v4, v6, :cond_2

    .line 78
    .line 79
    if-ge v5, v4, :cond_3

    .line 80
    .line 81
    :cond_2
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/widget/MoneyInputView;->getAmountDecimal()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-static {v1}, Lteam/opay/opb/qrcode/widget/MoneyInputView;->h(Lteam/opay/opb/qrcode/widget/MoneyInputView;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    filled-new-array {v3}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    const/4 v11, 0x6

    .line 94
    const/4 v12, 0x0

    .line 95
    const/4 v9, 0x0

    .line 96
    const/4 v10, 0x0

    .line 97
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const/4 v4, 0x0

    .line 102
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-lt v3, v2, :cond_3

    .line 113
    .line 114
    return-void

    .line 115
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {v1, v0, v5, p1}, Lteam/opay/opb/qrcode/widget/MoneyInputView;->k(Lteam/opay/opb/qrcode/widget/MoneyInputView;Landroid/text/Editable;ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "point"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/widget/MoneyInputView$a;->a:Lteam/opay/opb/qrcode/widget/MoneyInputView;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/widget/MoneyInputView;->getEtInput()Lteam/opay/opb/qrcode/widget/NoPasteEditText;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lteam/opay/opb/qrcode/widget/MoneyInputView$a;->a:Lteam/opay/opb/qrcode/widget/MoneyInputView;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v3, 0x2

    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-static {v2, p1, v5, v3, v4}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/widget/MoneyInputView;->getEtInput()Lteam/opay/opb/qrcode/widget/NoPasteEditText;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v1, v0, v2, p1}, Lteam/opay/opb/qrcode/widget/MoneyInputView;->k(Lteam/opay/opb/qrcode/widget/MoneyInputView;Landroid/text/Editable;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method
