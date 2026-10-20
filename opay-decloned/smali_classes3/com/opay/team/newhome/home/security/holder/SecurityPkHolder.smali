.class public final Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;
.super Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;
.source "SecurityPkHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J#\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u00172\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J#\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u00172\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u001f\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;",
        "Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;",
        "Ld27;",
        "binding",
        "",
        "mQuestionId",
        "",
        "mAnswer",
        "<init>",
        "(Ld27;Ljava/lang/Long;Ljava/lang/String;)V",
        "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
        "option",
        "",
        "size",
        "",
        "c",
        "(Lcom/opay/team/newhome/reward/SecurityOptionContent;I)V",
        "o",
        "()V",
        "",
        "yes",
        "n",
        "(ZLcom/opay/team/newhome/reward/SecurityOptionContent;)V",
        "Lkotlin/Pair;",
        "r",
        "(Lcom/opay/team/newhome/reward/SecurityOptionContent;)Lkotlin/Pair;",
        "q",
        "answered",
        "Landroid/content/res/ColorStateList;",
        "p",
        "(ZZ)Landroid/content/res/ColorStateList;",
        "d",
        "Ld27;",
        "getBinding",
        "()Ld27;",
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
.field public final d:Ld27;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld27;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ld27;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ld27;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getRoot(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, p2, p3}, Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;-><init>(Landroid/view/View;Ljava/lang/Long;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic h(Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;Lcom/opay/team/newhome/reward/SecurityOptionContent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->l(Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;Lcom/opay/team/newhome/reward/SecurityOptionContent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lcom/opay/team/newhome/reward/SecurityOptionContent;Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->m(Lcom/opay/team/newhome/reward/SecurityOptionContent;Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;Lcom/opay/team/newhome/reward/SecurityOptionContent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->k(Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;Lcom/opay/team/newhome/reward/SecurityOptionContent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final k(Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;Lcom/opay/team/newhome/reward/SecurityOptionContent;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->n(ZLcom/opay/team/newhome/reward/SecurityOptionContent;)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final l(Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;Lcom/opay/team/newhome/reward/SecurityOptionContent;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->n(ZLcom/opay/team/newhome/reward/SecurityOptionContent;)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final m(Lcom/opay/team/newhome/reward/SecurityOptionContent;Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->a()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->o()V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public c(Lcom/opay/team/newhome/reward/SecurityOptionContent;I)V
    .locals 17
    .param p1    # Lcom/opay/team/newhome/reward/SecurityOptionContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "option"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 11
    .line 12
    iget-object v2, v2, Ld27;->h:Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->a()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-virtual {v0, v4, v3}, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->p(ZZ)Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 27
    .line 28
    iget-object v2, v2, Ld27;->e:Landroid/widget/ImageView;

    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->a()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-virtual {v0, v5, v3}, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->p(ZZ)Landroid/content/res/ColorStateList;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p0 .. p1}, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->r(Lcom/opay/team/newhome/reward/SecurityOptionContent;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v3, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 47
    .line 48
    iget-object v3, v3, Ld27;->d:Landroid/widget/TextView;

    .line 49
    .line 50
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    .line 51
    .line 52
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Ljava/lang/Number;

    .line 57
    .line 58
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const/high16 v8, 0x42c80000    # 100.0f

    .line 63
    .line 64
    div-float/2addr v7, v8

    .line 65
    const v9, 0x3e4ccccd    # 0.2f

    .line 66
    .line 67
    .line 68
    sub-float/2addr v7, v9

    .line 69
    const/16 v10, 0x1e

    .line 70
    .line 71
    int-to-float v10, v10

    .line 72
    mul-float v7, v7, v10

    .line 73
    .line 74
    const/4 v11, 0x4

    .line 75
    int-to-float v11, v11

    .line 76
    add-float/2addr v7, v11

    .line 77
    float-to-int v7, v7

    .line 78
    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 79
    .line 80
    .line 81
    new-array v7, v4, [Landroid/text/InputFilter$LengthFilter;

    .line 82
    .line 83
    aput-object v6, v7, v5

    .line 84
    .line 85
    check-cast v7, [Landroid/text/InputFilter;

    .line 86
    .line 87
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 88
    .line 89
    .line 90
    iget-object v3, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 91
    .line 92
    iget-object v3, v3, Ld27;->d:Landroid/widget/TextView;

    .line 93
    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->a()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    const/16 v7, 0x11

    .line 99
    .line 100
    const v11, 0x800013

    .line 101
    .line 102
    .line 103
    if-eqz v6, :cond_0

    .line 104
    .line 105
    iget-object v6, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 106
    .line 107
    iget-object v6, v6, Ld27;->h:Landroid/widget/ImageView;

    .line 108
    .line 109
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    sget v13, Lteam/opay/pay/R$color;->osdk_security_pk_yes_select:I

    .line 114
    .line 115
    invoke-static {v12, v13}, Lzq2;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 120
    .line 121
    .line 122
    const v6, 0x800013

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    iget-object v6, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 127
    .line 128
    iget-object v6, v6, Ld27;->h:Landroid/widget/ImageView;

    .line 129
    .line 130
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    sget v13, Lteam/opay/pay/R$color;->osdk_security_pk_yes_normal:I

    .line 135
    .line 136
    invoke-static {v12, v13}, Lzq2;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 141
    .line 142
    .line 143
    const/16 v6, 0x11

    .line 144
    .line 145
    :goto_0
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 146
    .line 147
    .line 148
    iget-object v3, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 149
    .line 150
    iget-object v3, v3, Ld27;->d:Landroid/widget/TextView;

    .line 151
    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->o()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    iget-object v3, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 160
    .line 161
    iget-object v3, v3, Ld27;->d:Landroid/widget/TextView;

    .line 162
    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->a()Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 168
    .line 169
    .line 170
    iget-object v3, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 171
    .line 172
    iget-object v3, v3, Ld27;->c:Landroid/widget/TextView;

    .line 173
    .line 174
    const-string v6, "leftPercent"

    .line 175
    .line 176
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->a()Z

    .line 180
    .line 181
    .line 182
    move-result v12

    .line 183
    const/16 v13, 0x8

    .line 184
    .line 185
    if-eqz v12, :cond_1

    .line 186
    .line 187
    const/4 v12, 0x0

    .line 188
    goto :goto_1

    .line 189
    :cond_1
    const/16 v12, 0x8

    .line 190
    .line 191
    :goto_1
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual/range {p0 .. p1}, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->q(Lcom/opay/team/newhome/reward/SecurityOptionContent;)Lkotlin/Pair;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    iget-object v12, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 199
    .line 200
    iget-object v12, v12, Ld27;->c:Landroid/widget/TextView;

    .line 201
    .line 202
    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    const-string v12, "%"

    .line 210
    .line 211
    if-nez v6, :cond_2

    .line 212
    .line 213
    iget-object v6, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 214
    .line 215
    iget-object v6, v6, Ld27;->c:Landroid/widget/TextView;

    .line 216
    .line 217
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v14

    .line 221
    new-instance v15, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v14

    .line 236
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    :cond_2
    iget-object v6, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 240
    .line 241
    iget-object v6, v6, Ld27;->d:Landroid/widget/TextView;

    .line 242
    .line 243
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    instance-of v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 248
    .line 249
    const-string v14, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 250
    .line 251
    if-eqz v6, :cond_3

    .line 252
    .line 253
    iget-object v6, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 254
    .line 255
    iget-object v6, v6, Ld27;->d:Landroid/widget/TextView;

    .line 256
    .line 257
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 265
    .line 266
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v15

    .line 270
    check-cast v15, Ljava/lang/Number;

    .line 271
    .line 272
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    .line 273
    .line 274
    .line 275
    move-result v15

    .line 276
    int-to-float v15, v15

    .line 277
    iput v15, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:F

    .line 278
    .line 279
    :cond_3
    iget-object v6, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 280
    .line 281
    iget-object v6, v6, Ld27;->b:Landroid/widget/ImageView;

    .line 282
    .line 283
    const-string v15, "ivPk"

    .line 284
    .line 285
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->a()Z

    .line 289
    .line 290
    .line 291
    move-result v15

    .line 292
    if-nez v15, :cond_4

    .line 293
    .line 294
    const/4 v15, 0x0

    .line 295
    goto :goto_2

    .line 296
    :cond_4
    const/16 v15, 0x8

    .line 297
    .line 298
    :goto_2
    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 299
    .line 300
    .line 301
    iget-object v6, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 302
    .line 303
    iget-object v6, v6, Ld27;->f:Landroid/widget/TextView;

    .line 304
    .line 305
    new-instance v15, Landroid/text/InputFilter$LengthFilter;

    .line 306
    .line 307
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v16

    .line 311
    check-cast v16, Ljava/lang/Number;

    .line 312
    .line 313
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->floatValue()F

    .line 314
    .line 315
    .line 316
    move-result v16

    .line 317
    div-float v16, v16, v8

    .line 318
    .line 319
    sub-float v16, v16, v9

    .line 320
    .line 321
    mul-float v16, v16, v10

    .line 322
    .line 323
    const/4 v8, 0x3

    .line 324
    int-to-float v8, v8

    .line 325
    add-float v8, v16, v8

    .line 326
    .line 327
    float-to-int v8, v8

    .line 328
    invoke-direct {v15, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 329
    .line 330
    .line 331
    new-array v4, v4, [Landroid/text/InputFilter$LengthFilter;

    .line 332
    .line 333
    aput-object v15, v4, v5

    .line 334
    .line 335
    check-cast v4, [Landroid/text/InputFilter;

    .line 336
    .line 337
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 338
    .line 339
    .line 340
    iget-object v4, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 341
    .line 342
    iget-object v4, v4, Ld27;->f:Landroid/widget/TextView;

    .line 343
    .line 344
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->a()Z

    .line 345
    .line 346
    .line 347
    move-result v6

    .line 348
    if-eqz v6, :cond_5

    .line 349
    .line 350
    iget-object v6, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 351
    .line 352
    iget-object v6, v6, Ld27;->e:Landroid/widget/ImageView;

    .line 353
    .line 354
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    sget v8, Lteam/opay/pay/R$color;->osdk_security_pk_no_select:I

    .line 359
    .line 360
    invoke-static {v7, v8}, Lzq2;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 361
    .line 362
    .line 363
    move-result-object v7

    .line 364
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 365
    .line 366
    .line 367
    const v7, 0x800013

    .line 368
    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_5
    iget-object v6, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 372
    .line 373
    iget-object v6, v6, Ld27;->e:Landroid/widget/ImageView;

    .line 374
    .line 375
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    sget v9, Lteam/opay/pay/R$color;->osdk_security_pk_no_normal:I

    .line 380
    .line 381
    invoke-static {v8, v9}, Lzq2;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 382
    .line 383
    .line 384
    move-result-object v8

    .line 385
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 386
    .line 387
    .line 388
    :goto_3
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 389
    .line 390
    .line 391
    iget-object v4, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 392
    .line 393
    iget-object v4, v4, Ld27;->f:Landroid/widget/TextView;

    .line 394
    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->d()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v6

    .line 399
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    .line 401
    .line 402
    iget-object v4, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 403
    .line 404
    iget-object v4, v4, Ld27;->f:Landroid/widget/TextView;

    .line 405
    .line 406
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->a()Z

    .line 407
    .line 408
    .line 409
    move-result v6

    .line 410
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 411
    .line 412
    .line 413
    iget-object v4, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 414
    .line 415
    iget-object v4, v4, Ld27;->g:Landroid/widget/TextView;

    .line 416
    .line 417
    const-string v6, "rightPercent"

    .line 418
    .line 419
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->a()Z

    .line 423
    .line 424
    .line 425
    move-result v7

    .line 426
    if-eqz v7, :cond_6

    .line 427
    .line 428
    goto :goto_4

    .line 429
    :cond_6
    const/16 v5, 0x8

    .line 430
    .line 431
    :goto_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 432
    .line 433
    .line 434
    iget-object v4, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 435
    .line 436
    iget-object v4, v4, Ld27;->g:Landroid/widget/TextView;

    .line 437
    .line 438
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 442
    .line 443
    .line 444
    move-result v4

    .line 445
    if-nez v4, :cond_7

    .line 446
    .line 447
    iget-object v4, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 448
    .line 449
    iget-object v4, v4, Ld27;->g:Landroid/widget/TextView;

    .line 450
    .line 451
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    .line 472
    .line 473
    :cond_7
    iget-object v3, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 474
    .line 475
    iget-object v3, v3, Ld27;->f:Landroid/widget/TextView;

    .line 476
    .line 477
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    instance-of v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 482
    .line 483
    if-eqz v3, :cond_8

    .line 484
    .line 485
    iget-object v3, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 486
    .line 487
    iget-object v3, v3, Ld27;->f:Landroid/widget/TextView;

    .line 488
    .line 489
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 497
    .line 498
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    check-cast v2, Ljava/lang/Number;

    .line 503
    .line 504
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    int-to-float v2, v2

    .line 509
    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:F

    .line 510
    .line 511
    :cond_8
    iget-object v2, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 512
    .line 513
    iget-object v2, v2, Ld27;->d:Landroid/widget/TextView;

    .line 514
    .line 515
    const-string v3, "leftYes"

    .line 516
    .line 517
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    new-instance v3, Ljcd;

    .line 521
    .line 522
    invoke-direct {v3, v0, v1}, Ljcd;-><init>(Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;Lcom/opay/team/newhome/reward/SecurityOptionContent;)V

    .line 523
    .line 524
    .line 525
    invoke-static {v2, v3}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 526
    .line 527
    .line 528
    iget-object v2, v0, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->d:Ld27;

    .line 529
    .line 530
    iget-object v2, v2, Ld27;->f:Landroid/widget/TextView;

    .line 531
    .line 532
    const-string v3, "rightNo"

    .line 533
    .line 534
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    new-instance v3, Lkcd;

    .line 538
    .line 539
    invoke-direct {v3, v0, v1}, Lkcd;-><init>(Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;Lcom/opay/team/newhome/reward/SecurityOptionContent;)V

    .line 540
    .line 541
    .line 542
    invoke-static {v2, v3}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 543
    .line 544
    .line 545
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 546
    .line 547
    const-string v3, "itemView"

    .line 548
    .line 549
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    new-instance v3, Llcd;

    .line 553
    .line 554
    invoke-direct {v3, v1, v0}, Llcd;-><init>(Lcom/opay/team/newhome/reward/SecurityOptionContent;Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;)V

    .line 555
    .line 556
    .line 557
    invoke-static {v2, v3}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 558
    .line 559
    .line 560
    return-void
.end method

.method public final n(ZLcom/opay/team/newhome/reward/SecurityOptionContent;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/security/holder/SecurityPkHolder;->o()V

    .line 10
    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    invoke-virtual {p2, v1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->r(Z)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v2, 0x1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->p()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    add-long/2addr v4, v2

    .line 25
    invoke-virtual {p2, v4, v5}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->A(J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->n()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->u(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget v4, Lteam/opay/pay/R$string;->osdk_home_security:I

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->o()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object v5, v1, v0

    .line 50
    .line 51
    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->x(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->e()J

    .line 60
    .line 61
    .line 62
    move-result-wide v4

    .line 63
    add-long/2addr v4, v2

    .line 64
    invoke-virtual {p2, v4, v5}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->t(J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->c()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->u(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget v4, Lteam/opay/pay/R$string;->osdk_home_security:I

    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->d()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    new-array v1, v1, [Ljava/lang/Object;

    .line 87
    .line 88
    aput-object v5, v1, v0

    .line 89
    .line 90
    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->x(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->m()Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    const-wide/16 v0, 0x0

    .line 109
    .line 110
    :goto_1
    add-long/2addr v0, v2

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p2, p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->z(Ljava/lang/Long;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;->f()Lkotlin/jvm/functions/Function1;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_3

    .line 123
    .line 124
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :cond_3
    :goto_2
    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getContext(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lteam/opay/pay/home/Service;->SECURITY_CENTER_HOME:Lteam/opay/pay/home/Service;

    .line 13
    .line 14
    invoke-virtual {v1}, Lteam/opay/pay/home/Service;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "?source=Home_security_controls_page_show"

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    sget-object v0, Lx7b;->a:Lx7b;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    new-array v1, v1, [Lkotlin/Pair;

    .line 42
    .line 43
    const-string v2, "Home_security_controls_Answer_results_click"

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final p(ZZ)Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    sget-object v0, Lhh2;->a:Lhh2;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget p1, Lteam/opay/pay/R$color;->osdk_security_pk_yes_select:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget p1, Lteam/opay/pay/R$color;->osdk_security_pk_no_select:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    if-eqz p1, :cond_2

    .line 14
    .line 15
    sget p1, Lteam/opay/pay/R$color;->osdk_security_pk_yes_normal:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    sget p1, Lteam/opay/pay/R$color;->osdk_security_pk_no_normal:I

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, p1}, Lhh2;->a(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "valueOf(...)"

    .line 29
    .line 30
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method

.method public final q(Lcom/opay/team/newhome/reward/SecurityOptionContent;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->m()Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-wide v3, v1

    .line 21
    :goto_0
    cmp-long v0, v3, v1

    .line 22
    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->p()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    long-to-float p1, v0

    .line 30
    long-to-float v0, v3

    .line 31
    div-float/2addr p1, v0

    .line 32
    const/16 v0, 0x64

    .line 33
    .line 34
    int-to-float v0, v0

    .line 35
    mul-float p1, p1, v0

    .line 36
    .line 37
    float-to-int p1, p1

    .line 38
    rsub-int/lit8 v0, p1, 0x64

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 p1, 0x32

    .line 42
    .line 43
    const/16 v0, 0x32

    .line 44
    .line 45
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method public final r(Lcom/opay/team/newhome/reward/SecurityOptionContent;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->m()Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-wide v3, v1

    .line 21
    :goto_0
    cmp-long v0, v3, v1

    .line 22
    .line 23
    if-lez v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->p()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    long-to-float p1, v0

    .line 30
    long-to-float v0, v3

    .line 31
    div-float/2addr p1, v0

    .line 32
    const/16 v0, 0x64

    .line 33
    .line 34
    int-to-float v0, v0

    .line 35
    mul-float p1, p1, v0

    .line 36
    .line 37
    float-to-int p1, p1

    .line 38
    const/16 v0, 0x14

    .line 39
    .line 40
    if-ge p1, v0, :cond_1

    .line 41
    .line 42
    const/16 p1, 0x14

    .line 43
    .line 44
    :cond_1
    const/16 v0, 0x50

    .line 45
    .line 46
    if-le p1, v0, :cond_2

    .line 47
    .line 48
    const/16 p1, 0x50

    .line 49
    .line 50
    :cond_2
    rsub-int/lit8 v0, p1, 0x64

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const/16 p1, 0x32

    .line 54
    .line 55
    const/16 v0, 0x32

    .line 56
    .line 57
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {p1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method
