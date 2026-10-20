.class public final Lteam/opay/sme/store/branch/BranchInviteAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BranchAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/core/common/internal/BindingViewHolder<",
        "Lvvd;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\t\u0008\u0000\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B/\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ%\u0010\u000e\u001a\u00020\u00062\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ*\u0010\u0014\u001a\r\u0012\t\u0012\u00070\u0003\u00a2\u0006\u0002\u0008\u00130\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R \u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0019R6\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001b8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/sme/store/branch/BranchInviteAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/core/common/internal/BindingViewHolder;",
        "Lvvd;",
        "Lkotlin/Function1;",
        "Lteam/opay/sme/store/api/BranchInfo;",
        "",
        "onItemClick",
        "onResendClick",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "holder",
        "",
        "position",
        "m",
        "(Lteam/opay/core/common/internal/BindingViewHolder;I)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "p",
        "(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;",
        "getItemCount",
        "()I",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "b",
        "",
        "value",
        "c",
        "Ljava/util/List;",
        "getDataList",
        "()Ljava/util/List;",
        "setDataList",
        "(Ljava/util/List;)V",
        "dataList",
        "business-sme-store_release"
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
.field public final a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lteam/opay/sme/store/api/BranchInfo;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lteam/opay/sme/store/api/BranchInfo;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/BranchInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/sme/store/api/BranchInfo;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/sme/store/api/BranchInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onItemClick"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onResendClick"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/sme/store/branch/BranchInviteAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/sme/store/branch/BranchInviteAdapter;->b:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lteam/opay/sme/store/branch/BranchInviteAdapter;->c:Ljava/util/List;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic k(Lteam/opay/sme/store/branch/BranchInviteAdapter;Lteam/opay/sme/store/api/BranchInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/store/branch/BranchInviteAdapter;->n(Lteam/opay/sme/store/branch/BranchInviteAdapter;Lteam/opay/sme/store/api/BranchInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lteam/opay/sme/store/branch/BranchInviteAdapter;Lteam/opay/sme/store/api/BranchInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/store/branch/BranchInviteAdapter;->o(Lteam/opay/sme/store/branch/BranchInviteAdapter;Lteam/opay/sme/store/api/BranchInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final n(Lteam/opay/sme/store/branch/BranchInviteAdapter;Lteam/opay/sme/store/api/BranchInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/sme/store/branch/BranchInviteAdapter;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final o(Lteam/opay/sme/store/branch/BranchInviteAdapter;Lteam/opay/sme/store/api/BranchInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/sme/store/branch/BranchInviteAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchInviteAdapter;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public m(Lteam/opay/core/common/internal/BindingViewHolder;I)V
    .locals 10
    .param p1    # Lteam/opay/core/common/internal/BindingViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lvvd;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/sme/store/branch/BranchInviteAdapter;->c:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lteam/opay/sme/store/api/BranchInfo;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lvvd;

    .line 22
    .line 23
    invoke-virtual {p1}, Lvvd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "getRoot(...)"

    .line 32
    .line 33
    if-nez p2, :cond_9

    .line 34
    .line 35
    invoke-virtual {p1}, Lvvd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lvvd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 v4, 0x0

    .line 66
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 75
    .line 76
    const/16 v7, 0x10

    .line 77
    .line 78
    int-to-float v7, v7

    .line 79
    mul-float v5, v5, v7

    .line 80
    .line 81
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    const-class v7, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 92
    .line 93
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-eqz v8, :cond_2

    .line 102
    .line 103
    check-cast v5, Ljava/lang/Integer;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 107
    .line 108
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-eqz v8, :cond_3

    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 128
    .line 129
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-eqz v8, :cond_4

    .line 138
    .line 139
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    .line 140
    .line 141
    .line 142
    move-result-wide v7

    .line 143
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Ljava/lang/Integer;

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 151
    .line 152
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_8

    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 163
    .line 164
    .line 165
    move-result-wide v7

    .line 166
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    check-cast v5, Ljava/lang/Integer;

    .line 171
    .line 172
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    invoke-virtual {p1}, Lvvd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    instance-of v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 188
    .line 189
    if-eqz v8, :cond_5

    .line 190
    .line 191
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 192
    .line 193
    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    goto :goto_2

    .line 198
    :cond_5
    const/4 v7, 0x0

    .line 199
    :goto_2
    invoke-virtual {p1}, Lvvd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 211
    .line 212
    if-eqz v9, :cond_6

    .line 213
    .line 214
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_6
    const/4 v8, 0x0

    .line 218
    :goto_3
    if-eqz v8, :cond_7

    .line 219
    .line 220
    iget v6, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 221
    .line 222
    :cond_7
    invoke-static {v3, v4, v5, v7, v6}, Lg0g;->g(Landroid/view/View;IIII)V

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 227
    .line 228
    const-string p2, "return number type not support"

    .line 229
    .line 230
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw p1

    .line 234
    :cond_9
    :goto_4
    rem-int/lit8 p2, p2, 0x2

    .line 235
    .line 236
    if-nez p2, :cond_a

    .line 237
    .line 238
    invoke-virtual {p1}, Lvvd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    sget v3, Lteam/opay/core/common/R$color;->opb_E2F5EB:I

    .line 246
    .line 247
    invoke-static {v1, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    invoke-static {p2, v3}, Lwie;->w(Landroid/view/View;I)V

    .line 252
    .line 253
    .line 254
    iget-object p2, p1, Lvvd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 255
    .line 256
    sget v3, Lteam/opay/core/common/R$color;->mint:I

    .line 257
    .line 258
    invoke-static {v1, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_a
    invoke-virtual {p1}, Lvvd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    sget v3, Lteam/opay/sme/store/R$color;->sme_store_FFF8E1:I

    .line 274
    .line 275
    invoke-static {v1, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    invoke-static {p2, v3}, Lwie;->w(Landroid/view/View;I)V

    .line 280
    .line 281
    .line 282
    iget-object p2, p1, Lvvd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 283
    .line 284
    sget v3, Lteam/opay/sme/store/R$color;->sme_store_FFA101:I

    .line 285
    .line 286
    invoke-static {v1, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    .line 292
    .line 293
    :goto_5
    iget-object p2, p1, Lvvd;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 294
    .line 295
    invoke-virtual {v0}, Lteam/opay/sme/store/api/BranchInfo;->getAliasName()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    const-string v3, ""

    .line 300
    .line 301
    if-nez v1, :cond_b

    .line 302
    .line 303
    move-object v1, v3

    .line 304
    :cond_b
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .line 306
    .line 307
    iget-object p2, p1, Lvvd;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 308
    .line 309
    invoke-virtual {v0}, Lteam/opay/sme/store/api/BranchInfo;->getBranchUserPhone()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    if-nez v1, :cond_c

    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_c
    move-object v3, v1

    .line 317
    :goto_6
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    .line 319
    .line 320
    iget-object p2, p1, Lvvd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 321
    .line 322
    const-string v1, "itemResend"

    .line 323
    .line 324
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    new-instance v1, Lfj1;

    .line 328
    .line 329
    invoke-direct {v1, p0, v0}, Lfj1;-><init>(Lteam/opay/sme/store/branch/BranchInviteAdapter;Lteam/opay/sme/store/api/BranchInfo;)V

    .line 330
    .line 331
    .line 332
    invoke-static {p2, v1}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1}, Lvvd;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    new-instance p2, Lgj1;

    .line 343
    .line 344
    invoke-direct {p2, p0, v0}, Lgj1;-><init>(Lteam/opay/sme/store/branch/BranchInviteAdapter;Lteam/opay/sme/store/api/BranchInfo;)V

    .line 345
    .line 346
    .line 347
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 348
    .line 349
    .line 350
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchInviteAdapter;->m(Lteam/opay/core/common/internal/BindingViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/BranchInviteAdapter;->p(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public p(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lvvd;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, p1, v1}, Lvvd;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lvvd;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "inflate(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p1}, Lteam/opay/core/common/internal/BindingViewHolder;-><init>(Lxyf;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public final setDataList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/BranchInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/sme/store/branch/BranchInviteAdapter;->c:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
