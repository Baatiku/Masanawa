.class public final Lteam/opay/business/dialog/fragment/v1/NoticeDialog;
.super Lteam/opay/business/dialog/fragment/BizDialogFragment1;
.source "NoticeDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J+\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/business/dialog/fragment/v1/NoticeDialog;",
        "Lteam/opay/business/dialog/fragment/BizDialogFragment1;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Ldb3;",
        "x",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "w0",
        "()Ldb3;",
        "binding",
        "Landroid/widget/TextView;",
        "j0",
        "()Landroid/widget/TextView;",
        "actionCancel",
        "business-dialog_release"
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
.field public static final synthetic y:[Lzo7;
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
.field public final x:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/business/dialog/databinding/DialogFragmentNoticeDialogBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;

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
    sput-object v1, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->y:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 5
    .line 6
    const-class v1, Ldb3;

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->x:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic u0(Lteam/opay/business/dialog/fragment/v1/NoticeDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->x0(Lteam/opay/business/dialog/fragment/v1/NoticeDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v0(Lteam/opay/business/dialog/fragment/v1/NoticeDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->y0(Lteam/opay/business/dialog/fragment/v1/NoticeDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final x0(Lteam/opay/business/dialog/fragment/v1/NoticeDialog;)Lkotlin/Unit;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p0, v0, v1, v0}, Lteam/opay/business/dialog/fragment/BizDialogFragment1;->g0(Lteam/opay/business/dialog/fragment/BizDialogFragment1;Lteam/opay/business/dialog/api/DialogEntity;ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final y0(Lteam/opay/business/dialog/fragment/v1/NoticeDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment1;->e0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public j0()Landroid/widget/TextView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->w0()Ldb3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ldb3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 6
    .line 7
    const-string v1, "actionCancel"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->w0()Ldb3;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ldb3;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "getRoot(...)"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lteam/opay/business/dialog/fragment/BizDialogFragment1;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->w0()Ldb3;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Ldb3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 16
    .line 17
    const-string p2, "actionConfirm"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Lgy9;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Lgy9;-><init>(Lteam/opay/business/dialog/fragment/v1/NoticeDialog;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->w0()Ldb3;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p1, p1, Ldb3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 35
    .line 36
    const-string p2, "actionCancel"

    .line 37
    .line 38
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lhy9;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lhy9;-><init>(Lteam/opay/business/dialog/fragment/v1/NoticeDialog;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment1;->m0()Lteam/opay/business/dialog/api/DialogEntity;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_9

    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->w0()Ldb3;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v0, v0, Ldb3;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, ""

    .line 66
    .line 67
    if-nez v1, :cond_0

    .line 68
    .line 69
    move-object v1, v2

    .line 70
    :cond_0
    const/4 v3, 0x0

    .line 71
    invoke-static {v1, v3}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->w0()Ldb3;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v0, v0, Ldb3;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    const-string v1, "tvTitle"

    .line 85
    .line 86
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const/4 v4, 0x1

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const/4 v1, 0x0

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 106
    :goto_1
    xor-int/2addr v1, v4

    .line 107
    invoke-static {v0, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->w0()Ldb3;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v0, v0, Ldb3;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getContent()Ljava/util/ArrayList;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Ljava/lang/String;

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    const/4 v1, 0x0

    .line 130
    :goto_2
    if-nez v1, :cond_4

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_4
    move-object v2, v1

    .line 134
    :goto_3
    invoke-static {v2, v3}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->w0()Ldb3;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v0, v0, Ldb3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 146
    .line 147
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment1;->m0()Lteam/opay/business/dialog/api/DialogEntity;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    if-eqz v1, :cond_5

    .line 152
    .line 153
    invoke-virtual {v1}, Lteam/opay/business/dialog/api/DialogEntity;->getButton()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    if-eqz v1, :cond_5

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_5
    sget v1, Lteam/opay/business/dialog/R$string;->dialog_got_it:I

    .line 161
    .line 162
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    const-string v2, "getString(...)"

    .line 167
    .line 168
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->w0()Ldb3;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v0, v0, Ldb3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 179
    .line 180
    sget v1, Lteam/opay/business/dialog/R$string;->dialog_do_later:I

    .line 181
    .line 182
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment1;->n0()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    const/4 v1, 0x6

    .line 194
    const-string v2, "ivHeader"

    .line 195
    .line 196
    if-eqz v0, :cond_7

    .line 197
    .line 198
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->w0()Ldb3;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iget-object v0, v0, Ldb3;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 203
    .line 204
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getWindowType()I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-ne p1, v1, :cond_6

    .line 212
    .line 213
    sget p1, Lteam/opay/business/dialog/R$drawable;->dialog_reward_bg:I

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_6
    sget p1, Lteam/opay/business/dialog/R$drawable;->dialog_closable_notice_bg:I

    .line 217
    .line 218
    :goto_5
    invoke-static {v0, p1}, Lle7;->b(Landroid/widget/ImageView;I)V

    .line 219
    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_7
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->w0()Ldb3;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    iget-object v0, v0, Ldb3;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 227
    .line 228
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getWindowType()I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-ne p1, v1, :cond_8

    .line 236
    .line 237
    sget p1, Lteam/opay/business/dialog/R$drawable;->dialog_reward_bg:I

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_8
    sget p1, Lteam/opay/business/dialog/R$drawable;->dialog_unclosable_notice_bg:I

    .line 241
    .line 242
    :goto_6
    invoke-static {v0, p1}, Lle7;->b(Landroid/widget/ImageView;I)V

    .line 243
    .line 244
    .line 245
    :goto_7
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->w0()Ldb3;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    iget-object p1, p1, Ldb3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 250
    .line 251
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment1;->n0()Z

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    invoke-static {p1, p2}, Lg0g;->j(Landroid/view/View;Z)V

    .line 259
    .line 260
    .line 261
    :cond_9
    return-void
.end method

.method public final w0()Ldb3;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->x:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/dialog/fragment/v1/NoticeDialog;->y:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;->g(Landroidx/fragment/app/Fragment;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ldb3;

    .line 13
    .line 14
    return-object v0
.end method
