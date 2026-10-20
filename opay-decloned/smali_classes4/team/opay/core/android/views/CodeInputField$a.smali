.class public final Lteam/opay/core/android/views/CodeInputField$a;
.super Ljava/lang/Object;
.source "CodeInputField.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/android/views/CodeInputField;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J/\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ/\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "team/opay/core/android/views/CodeInputField$a",
        "Landroid/text/TextWatcher;",
        "",
        "s",
        "",
        "start",
        "count",
        "after",
        "",
        "beforeTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "before",
        "onTextChanged",
        "Landroid/text/Editable;",
        "afterTextChanged",
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
.field public final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic b:Lteam/opay/core/android/views/CodeInputField;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lteam/opay/core/android/views/CodeInputField;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/android/views/CodeInputField$a;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/android/views/CodeInputField$a;->b:Lteam/opay/core/android/views/CodeInputField;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .line 1
    const-string v0, "s"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lteam/opay/core/android/views/CodeInputField$a;->b:Lteam/opay/core/android/views/CodeInputField;

    .line 11
    .line 12
    invoke-virtual {v1}, Lteam/opay/core/android/views/CodeInputField;->getFieldCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-le v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField$a;->b:Lteam/opay/core/android/views/CodeInputField;

    .line 19
    .line 20
    invoke-virtual {v0}, Lteam/opay/core/android/views/CodeInputField;->getFieldCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField$a;->b:Lteam/opay/core/android/views/CodeInputField;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-static {v0, v1}, Lteam/opay/core/android/views/CodeInputField;->j(Lteam/opay/core/android/views/CodeInputField;Z)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField$a;->b:Lteam/opay/core/android/views/CodeInputField;

    .line 38
    .line 39
    invoke-virtual {v0}, Lteam/opay/core/android/views/CodeInputField;->getFieldCount()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v3, 0x0

    .line 45
    :goto_0
    if-ge v3, v0, :cond_4

    .line 46
    .line 47
    iget-object v4, p0, Lteam/opay/core/android/views/CodeInputField$a;->b:Lteam/opay/core/android/views/CodeInputField;

    .line 48
    .line 49
    invoke-static {v4}, Lteam/opay/core/android/views/CodeInputField;->i(Lteam/opay/core/android/views/CodeInputField;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lteam/opay/core/android/validation/ValidationTextView;

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-le v5, v3, :cond_2

    .line 64
    .line 65
    iget-object v5, p0, Lteam/opay/core/android/views/CodeInputField$a;->b:Lteam/opay/core/android/views/CodeInputField;

    .line 66
    .line 67
    invoke-virtual {v5}, Lteam/opay/core/android/views/CodeInputField;->getCurrentShownCode()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-le v5, v3, :cond_1

    .line 76
    .line 77
    iget-object v5, p0, Lteam/opay/core/android/views/CodeInputField$a;->b:Lteam/opay/core/android/views/CodeInputField;

    .line 78
    .line 79
    invoke-virtual {v5}, Lteam/opay/core/android/views/CodeInputField;->getCurrentShownCode()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eq v5, v6, :cond_3

    .line 92
    .line 93
    :cond_1
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    const-string v6, "getText(...)"

    .line 110
    .line 111
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-lez v5, :cond_3

    .line 119
    .line 120
    const-string v5, ""

    .line 121
    .line 122
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField$a;->b:Lteam/opay/core/android/views/CodeInputField;

    .line 129
    .line 130
    invoke-static {v0, v2}, Lteam/opay/core/android/views/CodeInputField;->j(Lteam/opay/core/android/views/CodeInputField;Z)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField$a;->b:Lteam/opay/core/android/views/CodeInputField;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0, p1}, Lteam/opay/core/android/views/CodeInputField;->setCurrentShownCode(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lteam/opay/core/android/views/CodeInputField$a;->b:Lteam/opay/core/android/views/CodeInputField;

    .line 143
    .line 144
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField$a;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 145
    .line 146
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 147
    .line 148
    invoke-static {p1, v0}, Lteam/opay/core/android/views/CodeInputField;->f(Lteam/opay/core/android/views/CodeInputField;Z)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lteam/opay/core/android/views/CodeInputField$a;->b:Lteam/opay/core/android/views/CodeInputField;

    .line 152
    .line 153
    invoke-static {p1, v1}, Lteam/opay/core/android/views/CodeInputField;->l(Lteam/opay/core/android/views/CodeInputField;Z)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lteam/opay/core/android/views/CodeInputField$a;->b:Lteam/opay/core/android/views/CodeInputField;

    .line 157
    .line 158
    invoke-virtual {p1}, Lteam/opay/core/android/views/CodeInputField;->getOnCodeEdited()Lkotlin/jvm/functions/Function0;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    if-eqz p1, :cond_5

    .line 163
    .line 164
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    :cond_5
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    const-string p2, "s"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    const-string p2, "s"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/core/android/views/CodeInputField$a;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    if-lez p4, :cond_0

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p2, 0x0

    .line 15
    :goto_0
    iput-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 16
    .line 17
    return-void
.end method
