.class public final Lteam/opay/business/dialog/fragment/v1/PromotionDialog;
.super Lteam/opay/business/dialog/fragment/BizDialogFragment1;
.source "PromotionDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J+\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/business/dialog/fragment/v1/PromotionDialog;",
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
        "Lgb3;",
        "x",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "w0",
        "()Lgb3;",
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
    const-string v1, "getBinding()Lteam/opay/business/dialog/databinding/DialogFragmentPromotionDialogBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/dialog/fragment/v1/PromotionDialog;

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
    sput-object v1, Lteam/opay/business/dialog/fragment/v1/PromotionDialog;->y:[Lzo7;

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
    const-class v1, Lgb3;

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/business/dialog/fragment/v1/PromotionDialog;->x:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic u0(Lteam/opay/business/dialog/fragment/v1/PromotionDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/dialog/fragment/v1/PromotionDialog;->x0(Lteam/opay/business/dialog/fragment/v1/PromotionDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v0(Lteam/opay/business/dialog/fragment/v1/PromotionDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/dialog/fragment/v1/PromotionDialog;->y0(Lteam/opay/business/dialog/fragment/v1/PromotionDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final x0(Lteam/opay/business/dialog/fragment/v1/PromotionDialog;)Lkotlin/Unit;
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

.method public static final y0(Lteam/opay/business/dialog/fragment/v1/PromotionDialog;)Lkotlin/Unit;
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
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/PromotionDialog;->w0()Lgb3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lgb3;->b:Lcom/google/android/material/button/MaterialButton;

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
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/PromotionDialog;->w0()Lgb3;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lgb3;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

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
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/PromotionDialog;->w0()Lgb3;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Lgb3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 16
    .line 17
    const-string p2, "actionConfirm"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Li2c;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Li2c;-><init>(Lteam/opay/business/dialog/fragment/v1/PromotionDialog;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/PromotionDialog;->w0()Lgb3;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p1, p1, Lgb3;->c:Lcom/google/android/material/button/MaterialButton;

    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment1;->m0()Lteam/opay/business/dialog/api/DialogEntity;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p2}, Lteam/opay/business/dialog/api/DialogEntity;->getButton()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    sget p2, Lteam/opay/business/dialog/R$string;->dialog_got_it:I

    .line 50
    .line 51
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const-string v0, "getString(...)"

    .line 56
    .line 57
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/PromotionDialog;->w0()Lgb3;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p1, p1, Lgb3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 68
    .line 69
    sget p2, Lteam/opay/business/dialog/R$string;->dialog_do_later:I

    .line 70
    .line 71
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/PromotionDialog;->w0()Lgb3;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object p1, p1, Lgb3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 83
    .line 84
    const-string p2, "actionCancel"

    .line 85
    .line 86
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Lj2c;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Lj2c;-><init>(Lteam/opay/business/dialog/fragment/v1/PromotionDialog;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v0}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment1;->m0()Lteam/opay/business/dialog/api/DialogEntity;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/PromotionDialog;->w0()Lgb3;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v0, v0, Lgb3;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 108
    .line 109
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const-string v2, ""

    .line 114
    .line 115
    if-nez v1, :cond_1

    .line 116
    .line 117
    move-object v1, v2

    .line 118
    :cond_1
    const/4 v3, 0x0

    .line 119
    invoke-static {v1, v3}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/PromotionDialog;->w0()Lgb3;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v0, v0, Lgb3;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    const-string v1, "tvTitle"

    .line 133
    .line 134
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const/4 v4, 0x1

    .line 142
    if-eqz v1, :cond_3

    .line 143
    .line 144
    invoke-static {v1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_2

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_2
    const/4 v1, 0x0

    .line 152
    goto :goto_2

    .line 153
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 154
    :goto_2
    xor-int/2addr v1, v4

    .line 155
    invoke-static {v0, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/PromotionDialog;->w0()Lgb3;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iget-object v0, v0, Lgb3;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 163
    .line 164
    invoke-virtual {p1}, Lteam/opay/business/dialog/api/DialogEntity;->getContent()Ljava/util/ArrayList;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    if-eqz p1, :cond_4

    .line 169
    .line 170
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Ljava/lang/String;

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_4
    const/4 p1, 0x0

    .line 178
    :goto_3
    if-nez p1, :cond_5

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_5
    move-object v2, p1

    .line 182
    :goto_4
    invoke-static {v2, v3}, Lf47;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/v1/PromotionDialog;->w0()Lgb3;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iget-object p1, p1, Lgb3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 194
    .line 195
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Lteam/opay/business/dialog/fragment/BizDialogFragment1;->n0()Z

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    invoke-static {p1, p2}, Lg0g;->j(Landroid/view/View;Z)V

    .line 203
    .line 204
    .line 205
    :cond_6
    return-void
.end method

.method public final w0()Lgb3;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/dialog/fragment/v1/PromotionDialog;->x:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/dialog/fragment/v1/PromotionDialog;->y:[Lzo7;

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
    check-cast v0, Lgb3;

    .line 13
    .line 14
    return-object v0
.end method
