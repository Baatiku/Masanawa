.class public final Lteam/opay/pay/settings/BandCardEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "BandCardEditText.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J1\u0010\u0017\u001a\u00020\u000c2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u000f8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lteam/opay/pay/settings/BandCardEditText;",
        "Landroidx/appcompat/widget/AppCompatEditText;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "c",
        "()V",
        "",
        "getBankCardText",
        "()Ljava/lang/String;",
        "",
        "text",
        "start",
        "before",
        "count",
        "b",
        "(Ljava/lang/CharSequence;III)V",
        "",
        "a",
        "Z",
        "shouldStopChange",
        "Ljava/lang/String;",
        "WHITE_SPACE",
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
.field public a:Z

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lteam/opay/pay/settings/BandCardEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lteam/opay/pay/settings/BandCardEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-string p1, " "

    iput-object p1, p0, Lteam/opay/pay/settings/BandCardEditText;->b:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lteam/opay/pay/settings/BandCardEditText;->c()V

    return-void
.end method

.method public static final synthetic a(Lteam/opay/pay/settings/BandCardEditText;Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/settings/BandCardEditText;->b(Ljava/lang/CharSequence;III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lteam/opay/pay/settings/BandCardEditText;->a:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lteam/opay/pay/settings/BandCardEditText$init$$inlined$doOnTextChanged$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lteam/opay/pay/settings/BandCardEditText$init$$inlined$doOnTextChanged$1;-><init>(Lteam/opay/pay/settings/BandCardEditText;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;III)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lteam/opay/pay/settings/BandCardEditText;->a:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iput-boolean v1, p0, Lteam/opay/pay/settings/BandCardEditText;->a:Z

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ","

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/4 p3, 0x1

    .line 41
    iput-boolean p3, p0, Lteam/opay/pay/settings/BandCardEditText;->a:Z

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sub-int/2addr v0, p3

    .line 52
    const/4 v2, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_0
    if-gt v2, v0, :cond_7

    .line 55
    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    move v4, v2

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v4, v0

    .line 61
    :goto_1
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const/16 v5, 0x20

    .line 66
    .line 67
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->i(II)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-gtz v4, :cond_3

    .line 72
    .line 73
    const/4 v4, 0x1

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    const/4 v4, 0x0

    .line 76
    :goto_2
    if-nez v3, :cond_5

    .line 77
    .line 78
    if-nez v4, :cond_4

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    goto :goto_0

    .line 82
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    if-nez v4, :cond_6

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_7
    :goto_3
    add-int/2addr v0, p3

    .line 92
    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-instance v0, Lkotlin/text/Regex;

    .line 101
    .line 102
    iget-object v2, p0, Lteam/opay/pay/settings/BandCardEditText;->b:Ljava/lang/String;

    .line 103
    .line 104
    invoke-direct {v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v2, ""

    .line 108
    .line 109
    invoke-virtual {v0, p1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    :goto_4
    if-ge v1, v0, :cond_9

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    add-int/lit8 v3, v1, 0x1

    .line 132
    .line 133
    rem-int/lit8 v4, v3, 0x4

    .line 134
    .line 135
    if-nez v4, :cond_8

    .line 136
    .line 137
    add-int/lit8 v4, v0, -0x1

    .line 138
    .line 139
    if-eq v1, v4, :cond_8

    .line 140
    .line 141
    iget-object v1, p0, Lteam/opay/pay/settings/BandCardEditText;->b:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    :cond_8
    move v1, v3

    .line 147
    goto :goto_4

    .line 148
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    if-eqz p4, :cond_a

    .line 156
    .line 157
    if-eq p4, p3, :cond_a

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_a
    if-nez p4, :cond_d

    .line 161
    .line 162
    div-int/lit8 p1, p2, 0x4

    .line 163
    .line 164
    div-int/lit8 p4, p1, 0x4

    .line 165
    .line 166
    if-lt p4, p3, :cond_b

    .line 167
    .line 168
    add-int/lit8 p1, p1, -0x1

    .line 169
    .line 170
    :cond_b
    mul-int/lit8 p4, p1, 0x4

    .line 171
    .line 172
    add-int/2addr p4, p1

    .line 173
    if-ne p2, p4, :cond_c

    .line 174
    .line 175
    sub-int/2addr p2, p3

    .line 176
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_c
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_d
    div-int/lit8 p1, p2, 0x4

    .line 185
    .line 186
    mul-int/lit8 p4, p1, 0x4

    .line 187
    .line 188
    sub-int/2addr p1, p3

    .line 189
    add-int/2addr p4, p1

    .line 190
    if-ne p2, p4, :cond_e

    .line 191
    .line 192
    add-int/lit8 p2, p2, 0x2

    .line 193
    .line 194
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_e
    add-int/2addr p2, p3

    .line 199
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 200
    .line 201
    .line 202
    :goto_5
    return-void
.end method

.method public final getBankCardText()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    sub-int/2addr v1, v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    :goto_0
    if-gt v4, v1, :cond_5

    .line 19
    .line 20
    if-nez v5, :cond_0

    .line 21
    .line 22
    move v6, v4

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move v6, v1

    .line 25
    :goto_1
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const/16 v7, 0x20

    .line 30
    .line 31
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->i(II)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-gtz v6, :cond_1

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    const/4 v6, 0x0

    .line 40
    :goto_2
    if-nez v5, :cond_3

    .line 41
    .line 42
    if-nez v6, :cond_2

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    if-nez v6, :cond_4

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    :goto_3
    add-int/2addr v1, v2

    .line 56
    invoke-interface {v0, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lkotlin/text/Regex;

    .line 65
    .line 66
    iget-object v2, p0, Lteam/opay/pay/settings/BandCardEditText;->b:Ljava/lang/String;

    .line 67
    .line 68
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v2, ""

    .line 72
    .line 73
    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0
.end method
