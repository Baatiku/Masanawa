.class public final Lcashier/normalpay/PayOwealthGuideDialogFragment;
.super Lcashier/normalpay/Hilt_PayOwealthGuideDialogFragment;
.source "PayOwealthGuideDialogFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J-\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J!\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcashier/normalpay/PayOwealthGuideDialogFragment;",
        "Lcashier/ui/BaseBSFragment;",
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
        "",
        "onDestroyView",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "jumpUrl",
        "H",
        "(Ljava/lang/String;)V",
        "Lcashier/model/CashierViewModel;",
        "g",
        "Lid8;",
        "G",
        "()Lcashier/model/CashierViewModel;",
        "viewModel",
        "Lia3;",
        "h",
        "Lia3;",
        "_binding",
        "cashier_release"
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
.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lia3;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcashier/normalpay/Hilt_PayOwealthGuideDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcashier/model/CashierViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcashier/normalpay/PayOwealthGuideDialogFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcashier/normalpay/PayOwealthGuideDialogFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcashier/normalpay/PayOwealthGuideDialogFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcashier/normalpay/PayOwealthGuideDialogFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->c(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcashier/normalpay/PayOwealthGuideDialogFragment;->g:Lid8;

    .line 25
    .line 26
    return-void
.end method

.method public static final synthetic E(Lcashier/normalpay/PayOwealthGuideDialogFragment;)Lcashier/model/CashierViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcashier/normalpay/PayOwealthGuideDialogFragment;->G()Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic F(Lcashier/normalpay/PayOwealthGuideDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcashier/normalpay/PayOwealthGuideDialogFragment;->H(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final G()Lcashier/model/CashierViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcashier/normalpay/PayOwealthGuideDialogFragment;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcashier/model/CashierViewModel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final H(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcashier/normalpay/PayOwealthGuideDialogFragment;->G()Lcashier/model/CashierViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcashier/model/CashierViewModel;->R()Lcashier/CashierDelegate;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcashier/SchemeType;->ADD_MONEY:Lcashier/SchemeType;

    .line 12
    .line 13
    new-instance v2, Lcashier/normalpay/PayOwealthGuideDialogFragment$openAction$1;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcashier/normalpay/PayOwealthGuideDialogFragment$openAction$1;-><init>(Lcashier/normalpay/PayOwealthGuideDialogFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1, p1, v2}, Lcashier/CashierDelegate;->openScheme(Lcashier/SchemeType;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-static {p1, p2, p3}, Lia3;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lia3;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcashier/normalpay/PayOwealthGuideDialogFragment;->h:Lia3;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lia3;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcashier/normalpay/PayOwealthGuideDialogFragment;->h:Lia3;

    .line 6
    .line 7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcashier/normalpay/PayOwealthGuideDialogFragment;->G()Lcashier/model/CashierViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->c0()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcashier/data/OwealthOpenConfig;

    .line 22
    .line 23
    if-eqz p1, :cond_8

    .line 24
    .line 25
    iget-object p2, p0, Lcashier/normalpay/PayOwealthGuideDialogFragment;->h:Lia3;

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p2, Lia3;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 35
    .line 36
    const-string v1, "binding.tipsIcon"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcashier/data/OwealthOpenConfig;->f()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x2

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-static {v0, v1, v2, v3, v4}, Ld0g;->m(Landroid/widget/ImageView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcashier/data/OwealthOpenConfig;->h()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p2, Lia3;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    sget-object v1, Lteam/opay/swarmfoundation/color/DarkColors;->a:Lteam/opay/swarmfoundation/color/DarkColors;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcashier/data/OwealthOpenConfig;->h()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Lteam/opay/swarmfoundation/color/DarkColors;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcashier/data/OwealthOpenConfig;->g()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    iget-object v0, p2, Lia3;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    sget-object v1, Lteam/opay/swarmfoundation/color/DarkColors;->a:Lteam/opay/swarmfoundation/color/DarkColors;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcashier/data/OwealthOpenConfig;->g()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Lteam/opay/swarmfoundation/color/DarkColors;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    :goto_1
    iget-object v0, p2, Lia3;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 108
    .line 109
    new-instance v1, Lcashier/normalpay/PayOwealthGuideListAdapter;

    .line 110
    .line 111
    invoke-direct {v1}, Lcashier/normalpay/PayOwealthGuideListAdapter;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lcashier/normalpay/PayOwealthGuideDialogFragment;->G()Lcashier/model/CashierViewModel;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2}, Lcashier/model/CashierViewModel;->c0()Landroidx/lifecycle/MutableLiveData;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Lcashier/data/OwealthOpenConfig;

    .line 127
    .line 128
    if-eqz v2, :cond_5

    .line 129
    .line 130
    invoke-virtual {v2}, Lcashier/data/OwealthOpenConfig;->e()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    :cond_5
    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lcashier/data/OwealthOpenConfig;->a()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string v1, "binding.btnCancleGroup"

    .line 145
    .line 146
    if-eqz v0, :cond_7

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_6

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_6
    iget-object v0, p2, Lia3;->c:Landroidx/constraintlayout/widget/Group;

    .line 156
    .line 157
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v0}, Ld0g;->s(Landroid/view/View;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p2, Lia3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcashier/data/OwealthOpenConfig;->a()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p2, Lia3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 173
    .line 174
    const-string v1, "binding.btnCancle"

    .line 175
    .line 176
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    new-instance v1, Lcashier/normalpay/PayOwealthGuideDialogFragment$onViewCreated$2;

    .line 180
    .line 181
    invoke-direct {v1, p1, p0}, Lcashier/normalpay/PayOwealthGuideDialogFragment$onViewCreated$2;-><init>(Lcashier/data/OwealthOpenConfig;Lcashier/normalpay/PayOwealthGuideDialogFragment;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v0, v1}, Ld0g;->o(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_7
    :goto_2
    iget-object v0, p2, Lia3;->c:Landroidx/constraintlayout/widget/Group;

    .line 189
    .line 190
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v0}, Ld0g;->e(Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    :goto_3
    iget-object v0, p2, Lia3;->e:Lcom/google/android/material/button/MaterialButton;

    .line 197
    .line 198
    invoke-virtual {p1}, Lcashier/data/OwealthOpenConfig;->c()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p2, Lia3;->e:Lcom/google/android/material/button/MaterialButton;

    .line 206
    .line 207
    const-string v1, "binding.btnConfirm"

    .line 208
    .line 209
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    new-instance v1, Lcashier/normalpay/PayOwealthGuideDialogFragment$onViewCreated$3;

    .line 213
    .line 214
    invoke-direct {v1, p1, p0}, Lcashier/normalpay/PayOwealthGuideDialogFragment$onViewCreated$3;-><init>(Lcashier/data/OwealthOpenConfig;Lcashier/normalpay/PayOwealthGuideDialogFragment;)V

    .line 215
    .line 216
    .line 217
    invoke-static {v0, v1}, Ld0g;->o(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p2, Lia3;->f:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 221
    .line 222
    const-string p2, "binding.icBack"

    .line 223
    .line 224
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    new-instance p2, Lcashier/normalpay/PayOwealthGuideDialogFragment$onViewCreated$4;

    .line 228
    .line 229
    invoke-direct {p2, p0}, Lcashier/normalpay/PayOwealthGuideDialogFragment$onViewCreated$4;-><init>(Lcashier/normalpay/PayOwealthGuideDialogFragment;)V

    .line 230
    .line 231
    .line 232
    invoke-static {p1, p2}, Ld0g;->o(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 233
    .line 234
    .line 235
    sget-object v0, Lcashier/model/CashierViewModel;->E:Lcashier/model/CashierViewModel$Companion;

    .line 236
    .line 237
    const/4 v4, 0x6

    .line 238
    const/4 v5, 0x0

    .line 239
    const-string v1, "COMMON_pay_window_owealth_guide_page_show"

    .line 240
    .line 241
    const/4 v2, 0x0

    .line 242
    const/4 v3, 0x0

    .line 243
    invoke-static/range {v0 .. v5}, Lcashier/model/CashierViewModel$Companion;->b(Lcashier/model/CashierViewModel$Companion;Ljava/lang/String;[Lkotlin/Pair;Lcashier/data/CashierInput;ILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 248
    .line 249
    .line 250
    return-void
.end method
