.class public final Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TnItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TnViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View;",
        "view",
        "<init>",
        "(Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;Landroid/view/View;)V",
        "Lteam/opay/opb/qrcode/api/TnDetail;",
        "item",
        "",
        "position",
        "",
        "b",
        "(Lteam/opay/opb/qrcode/api/TnDetail;I)V",
        "",
        "input",
        "d",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "Lrac;",
        "a",
        "Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;",
        "e",
        "()Lrac;",
        "binding",
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


# static fields
.field public static final synthetic c:[Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lzo7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/opb/qrcode/databinding/QrSdkItemTnBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;

    .line 7
    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->i(Lkotlin/jvm/internal/PropertyReference1;)Lbp7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lzo7;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->c:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->b:Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 12
    .line 13
    const-class p2, Lrac;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;-><init>(Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a(Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;ILteam/opay/opb/qrcode/api/TnDetail;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->c(Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;ILteam/opay/opb/qrcode/api/TnDetail;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;ILteam/opay/opb/qrcode/api/TnDetail;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;->k(Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;->l(Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;->m()Lkotlin/jvm/functions/Function2;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method


# virtual methods
.method public final b(Lteam/opay/opb/qrcode/api/TnDetail;I)V
    .locals 6
    .param p1    # Lteam/opay/opb/qrcode/api/TnDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "item"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v2, v2, Lrac;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/TnDetail;->d()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, ""

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    move-object v3, v4

    .line 23
    :cond_0
    invoke-virtual {p0, v3}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->b:Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;

    .line 31
    .line 32
    invoke-static {v2}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;->k(Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ne p2, v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lrac;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sget v3, Lteam/opay/opb/qrcode/R$drawable;->qr_sdk_shape_f8f8fb_12_stroke:I

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v2, v2, Lrac;->c:Landroid/widget/ImageView;

    .line 56
    .line 57
    sget v3, Lteam/opay/opb/qrcode/R$drawable;->qr_sdk_ic_select:I

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lrac;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    sget v3, Lteam/opay/opb/qrcode/R$drawable;->qr_sdk_shape_f8f8fb_12:I

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-object v2, v2, Lrac;->c:Landroid/widget/ImageView;

    .line 81
    .line 82
    sget v3, Lteam/opay/opb/qrcode/R$drawable;->qr_sdk_ic_unselect:I

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lrac;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const-string v3, "getRoot(...)"

    .line 96
    .line 97
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v3, p0, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->b:Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;

    .line 101
    .line 102
    new-instance v5, Lame;

    .line 103
    .line 104
    invoke-direct {v5, v3, p2, p1}, Lame;-><init>(Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter;ILteam/opay/opb/qrcode/api/TnDetail;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v2, v5}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/TnDetail;->a()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    const-string v2, "clTag"

    .line 115
    .line 116
    if-eqz p2, :cond_2

    .line 117
    .line 118
    invoke-static {p2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_3

    .line 123
    .line 124
    :cond_2
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/TnDetail;->b()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    if-eqz p2, :cond_c

    .line 129
    .line 130
    invoke-static {p2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    if-eqz p2, :cond_3

    .line 135
    .line 136
    goto/16 :goto_5

    .line 137
    .line 138
    :cond_3
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    iget-object p2, p2, Lrac;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 143
    .line 144
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {p2}, Lg0g;->h(Landroid/view/View;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    iget-object p2, p2, Lrac;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/TnDetail;->a()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    if-nez v2, :cond_4

    .line 161
    .line 162
    move-object v2, v4

    .line 163
    :cond_4
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    iget-object p2, p2, Lrac;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 171
    .line 172
    const-string v2, "tvTnTag"

    .line 173
    .line 174
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/TnDetail;->a()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    if-eqz v2, :cond_6

    .line 182
    .line 183
    invoke-static {v2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_5

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_5
    const/4 v2, 0x0

    .line 191
    goto :goto_2

    .line 192
    :cond_6
    :goto_1
    const/4 v2, 0x1

    .line 193
    :goto_2
    xor-int/2addr v2, v0

    .line 194
    invoke-static {p2, v2}, Lg0g;->j(Landroid/view/View;Z)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/TnDetail;->c()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    const-string v2, "SPOS"

    .line 202
    .line 203
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_7

    .line 208
    .line 209
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    iget-object p2, p2, Lrac;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 214
    .line 215
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 216
    .line 217
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    sget v3, Lteam/opay/opb/qrcode/R$color;->qr_sdk_color_0091FF_no_dark:I

    .line 222
    .line 223
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    iget-object p2, p2, Lrac;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 235
    .line 236
    sget v2, Lteam/opay/opb/qrcode/R$drawable;->qr_sdk_shape_1a0085ff_4:I

    .line 237
    .line 238
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_7
    const-string v2, "TPOS"

    .line 243
    .line 244
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    if-eqz p2, :cond_8

    .line 249
    .line 250
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    iget-object p2, p2, Lrac;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 255
    .line 256
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 257
    .line 258
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    sget v3, Lteam/opay/opb/qrcode/R$color;->qr_sdk_color_ff9100_no_dark:I

    .line 263
    .line 264
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    iget-object p2, p2, Lrac;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 276
    .line 277
    sget v2, Lteam/opay/opb/qrcode/R$drawable;->qr_sdk_shape_1aff9100_4:I

    .line 278
    .line 279
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 280
    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_8
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    iget-object p2, p2, Lrac;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 288
    .line 289
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 290
    .line 291
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    sget v3, Lteam/opay/opb/qrcode/R$color;->qr_sdk_color_00C38A_no_dark:I

    .line 296
    .line 297
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    iget-object p2, p2, Lrac;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 309
    .line 310
    sget v2, Lteam/opay/opb/qrcode/R$drawable;->qr_sdk_shape_e2f5eb_4:I

    .line 311
    .line 312
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 313
    .line 314
    .line 315
    :goto_3
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 316
    .line 317
    .line 318
    move-result-object p2

    .line 319
    iget-object p2, p2, Lrac;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 320
    .line 321
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 322
    .line 323
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    sget v3, Lteam/opay/opb/qrcode/R$string;->qr_sdk_sn:I

    .line 328
    .line 329
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/TnDetail;->b()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    if-nez v5, :cond_9

    .line 334
    .line 335
    goto :goto_4

    .line 336
    :cond_9
    move-object v4, v5

    .line 337
    :goto_4
    new-array v5, v0, [Ljava/lang/Object;

    .line 338
    .line 339
    aput-object v4, v5, v1

    .line 340
    .line 341
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    iget-object p2, p2, Lrac;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 353
    .line 354
    const-string v2, "tvSn"

    .line 355
    .line 356
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/api/TnDetail;->b()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    if-eqz p1, :cond_a

    .line 364
    .line 365
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    if-eqz p1, :cond_b

    .line 370
    .line 371
    :cond_a
    const/4 v1, 0x1

    .line 372
    :cond_b
    xor-int/lit8 p1, v1, 0x1

    .line 373
    .line 374
    invoke-static {p2, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 375
    .line 376
    .line 377
    goto :goto_6

    .line 378
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->e()Lrac;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    iget-object p1, p1, Lrac;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 383
    .line 384
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 388
    .line 389
    .line 390
    :goto_6
    return-void
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v4, 0x4

    .line 2
    const/4 v5, 0x0

    .line 3
    const-string v1, " "

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move-object v0, p1

    .line 9
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    if-eq v2, v3, :cond_0

    .line 34
    .line 35
    const/4 v3, 0x5

    .line 36
    if-eq v2, v3, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/16 v3, 0x20

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "toString(...)"

    .line 52
    .line 53
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lkotlin/text/StringsKt;->q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method public final e()Lrac;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->a:Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/opb/qrcode/bind/adapter/TnItemAdapter$TnViewHolder;->c:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/ViewHolderViewBinding;->c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lrac;

    .line 13
    .line 14
    return-object v0
.end method
