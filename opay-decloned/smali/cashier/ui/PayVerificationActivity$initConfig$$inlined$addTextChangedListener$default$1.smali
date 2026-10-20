.class public final Lcashier/ui/PayVerificationActivity$initConfig$$inlined$addTextChangedListener$default$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/ui/PayVerificationActivity;->F(Lcashier/util/PayVerifyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "text",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcashier/ui/PayVerificationActivity;


# direct methods
.method public constructor <init>(Lcashier/ui/PayVerificationActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/ui/PayVerificationActivity$initConfig$$inlined$addTextChangedListener$default$1;->a:Lcashier/ui/PayVerificationActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcashier/ui/PayVerificationActivity$initConfig$$inlined$addTextChangedListener$default$1;->a:Lcashier/ui/PayVerificationActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcashier/ui/PayVerificationActivity;->y(Lcashier/ui/PayVerificationActivity;)Lv7b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "binding"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object p1, v1

    .line 16
    :cond_0
    iget-object p1, p1, Lv7b;->l:Lcom/google/android/material/button/MaterialButton;

    .line 17
    .line 18
    iget-object v2, p0, Lcashier/ui/PayVerificationActivity$initConfig$$inlined$addTextChangedListener$default$1;->a:Lcashier/ui/PayVerificationActivity;

    .line 19
    .line 20
    invoke-static {v2}, Lcashier/ui/PayVerificationActivity;->z(Lcashier/ui/PayVerificationActivity;)Lcashier/ui/VerificationConfig;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    const-string v2, "config"

    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v2, v1

    .line 32
    :cond_1
    invoke-virtual {v2}, Lcashier/ui/VerificationConfig;->getType()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x3

    .line 41
    const/4 v5, 0x1

    .line 42
    const/4 v6, 0x0

    .line 43
    sparse-switch v3, :sswitch_data_0

    .line 44
    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :sswitch_0
    const-string v3, "phone"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_2
    iget-object v2, p0, Lcashier/ui/PayVerificationActivity$initConfig$$inlined$addTextChangedListener$default$1;->a:Lcashier/ui/PayVerificationActivity;

    .line 59
    .line 60
    invoke-static {v2}, Lcashier/ui/PayVerificationActivity;->y(Lcashier/ui/PayVerificationActivity;)Lv7b;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    move-object v1, v2

    .line 71
    :goto_0
    iget-object v0, v1, Lv7b;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/16 v1, 0x9

    .line 86
    .line 87
    if-le v0, v1, :cond_4

    .line 88
    .line 89
    goto/16 :goto_6

    .line 90
    .line 91
    :cond_4
    :goto_1
    const/4 v5, 0x0

    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :sswitch_1
    const-string v3, "pin"

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_5

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_5
    iget-object v2, p0, Lcashier/ui/PayVerificationActivity$initConfig$$inlined$addTextChangedListener$default$1;->a:Lcashier/ui/PayVerificationActivity;

    .line 104
    .line 105
    invoke-static {v2}, Lcashier/ui/PayVerificationActivity;->y(Lcashier/ui/PayVerificationActivity;)Lv7b;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-nez v2, :cond_6

    .line 110
    .line 111
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    move-object v1, v2

    .line 116
    :goto_2
    iget-object v0, v1, Lv7b;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-le v0, v4, :cond_4

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :sswitch_2
    const-string v3, "otp"

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_7

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_7
    iget-object v2, p0, Lcashier/ui/PayVerificationActivity$initConfig$$inlined$addTextChangedListener$default$1;->a:Lcashier/ui/PayVerificationActivity;

    .line 143
    .line 144
    invoke-static {v2}, Lcashier/ui/PayVerificationActivity;->y(Lcashier/ui/PayVerificationActivity;)Lv7b;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    if-nez v2, :cond_8

    .line 149
    .line 150
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_8
    move-object v1, v2

    .line 155
    :goto_3
    iget-object v0, v1, Lv7b;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 156
    .line 157
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    const/4 v1, 0x5

    .line 170
    if-le v0, v1, :cond_4

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :sswitch_3
    const-string v3, "cvv"

    .line 174
    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-nez v2, :cond_9

    .line 180
    .line 181
    :goto_4
    goto :goto_1

    .line 182
    :cond_9
    iget-object v2, p0, Lcashier/ui/PayVerificationActivity$initConfig$$inlined$addTextChangedListener$default$1;->a:Lcashier/ui/PayVerificationActivity;

    .line 183
    .line 184
    invoke-static {v2}, Lcashier/ui/PayVerificationActivity;->y(Lcashier/ui/PayVerificationActivity;)Lv7b;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    if-nez v2, :cond_a

    .line 189
    .line 190
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_a
    move-object v1, v2

    .line 195
    :goto_5
    iget-object v0, v1, Lv7b;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 196
    .line 197
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-ne v0, v4, :cond_4

    .line 210
    .line 211
    :goto_6
    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :sswitch_data_0
    .sparse-switch
        0x18263 -> :sswitch_3
        0x1af2b -> :sswitch_2
        0x1b195 -> :sswitch_1
        0x65b3d6e -> :sswitch_0
    .end sparse-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
