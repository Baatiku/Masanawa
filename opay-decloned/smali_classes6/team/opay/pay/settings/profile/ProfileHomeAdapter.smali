.class public final Lteam/opay/pay/settings/profile/ProfileHomeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ProfileHomeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B1\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u001d\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R \u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010\'\u001a\u00020$8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/pay/settings/profile/ProfileHomeAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/content/Context;",
        "context",
        "",
        "Lteam/opay/pay/settings/profile/ProfileHomeItem;",
        "list",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/settings/profile/ProfileHomeType;",
        "",
        "onItemClick",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "getItemCount",
        "()I",
        "holder",
        "position",
        "onBindViewHolder",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V",
        "a",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "b",
        "Ljava/util/List;",
        "getList",
        "()Ljava/util/List;",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "Lnc8;",
        "d",
        "Lnc8;",
        "binding",
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
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/settings/profile/ProfileHomeItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lteam/opay/pay/settings/profile/ProfileHomeType;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lnc8;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lteam/opay/pay/settings/profile/ProfileHomeItem;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/settings/profile/ProfileHomeType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "list"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onItemClick"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->a:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->b:Ljava/util/List;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/settings/profile/ProfileHomeAdapter;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->l(Lteam/opay/pay/settings/profile/ProfileHomeAdapter;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final l(Lteam/opay/pay/settings/profile/ProfileHomeAdapter;I)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lteam/opay/pay/settings/profile/ProfileHomeItem;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/settings/profile/ProfileHomeItem;->e()Lteam/opay/pay/settings/profile/ProfileHomeType;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->b:Ljava/util/List;

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

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->d:Lnc8;

    .line 7
    .line 8
    const-string v1, "binding"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object v0, v2

    .line 17
    :cond_0
    iget-object v0, v0, Lnc8;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    iget-object v3, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->b:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lteam/opay/pay/settings/profile/ProfileHomeItem;

    .line 26
    .line 27
    invoke-virtual {v3}, Lteam/opay/pay/settings/profile/ProfileHomeItem;->c()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 35
    .line 36
    const-string v0, "itemView"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lt0c;

    .line 42
    .line 43
    invoke-direct {v0, p0, p2}, Lt0c;-><init>(Lteam/opay/pay/settings/profile/ProfileHomeAdapter;I)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->b:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lteam/opay/pay/settings/profile/ProfileHomeItem;

    .line 56
    .line 57
    invoke-virtual {p1}, Lteam/opay/pay/settings/profile/ProfileHomeItem;->e()Lteam/opay/pay/settings/profile/ProfileHomeType;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget-object v0, Lteam/opay/pay/settings/profile/ProfileHomeType;->AVATAR:Lteam/opay/pay/settings/profile/ProfileHomeType;

    .line 62
    .line 63
    if-ne p1, v0, :cond_5

    .line 64
    .line 65
    iget-object p1, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->d:Lnc8;

    .line 66
    .line 67
    if-nez p1, :cond_1

    .line 68
    .line 69
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    move-object p1, v2

    .line 73
    :cond_1
    iget-object p1, p1, Lnc8;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 74
    .line 75
    const-string v0, "avatar"

    .line 76
    .line 77
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->b:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lteam/opay/pay/settings/profile/ProfileHomeItem;

    .line 90
    .line 91
    invoke-virtual {p1}, Lteam/opay/pay/settings/profile/ProfileHomeItem;->b()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v3, "male"

    .line 96
    .line 97
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    sget p1, Lteam/opay/pay/R$mipmap;->avatar_default_male:I

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    sget p1, Lteam/opay/pay/R$mipmap;->avatar_default_female:I

    .line 107
    .line 108
    :goto_0
    iget-object v3, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->d:Lnc8;

    .line 109
    .line 110
    if-nez v3, :cond_3

    .line 111
    .line 112
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    move-object v3, v2

    .line 116
    :cond_3
    iget-object v1, v3, Lnc8;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 117
    .line 118
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->b:Ljava/util/List;

    .line 122
    .line 123
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    check-cast p2, Lteam/opay/pay/settings/profile/ProfileHomeItem;

    .line 128
    .line 129
    if-eqz p2, :cond_4

    .line 130
    .line 131
    invoke-virtual {p2}, Lteam/opay/pay/settings/profile/ProfileHomeItem;->a()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {v1, v2, p1}, Lme7;->a(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    iget-object p1, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->b:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Lteam/opay/pay/settings/profile/ProfileHomeItem;

    .line 150
    .line 151
    invoke-virtual {p1}, Lteam/opay/pay/settings/profile/ProfileHomeItem;->e()Lteam/opay/pay/settings/profile/ProfileHomeType;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    sget-object v0, Lteam/opay/pay/settings/profile/ProfileHomeType;->NICKNAME:Lteam/opay/pay/settings/profile/ProfileHomeType;

    .line 156
    .line 157
    if-ne p1, v0, :cond_9

    .line 158
    .line 159
    iget-object p1, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->d:Lnc8;

    .line 160
    .line 161
    if-nez p1, :cond_6

    .line 162
    .line 163
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    move-object p1, v2

    .line 167
    :cond_6
    iget-object p1, p1, Lnc8;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 168
    .line 169
    const-string v0, "rightText"

    .line 170
    .line 171
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->d:Lnc8;

    .line 178
    .line 179
    if-nez p1, :cond_7

    .line 180
    .line 181
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_7
    move-object v2, p1

    .line 186
    :goto_1
    iget-object p1, v2, Lnc8;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 187
    .line 188
    iget-object v0, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->b:Ljava/util/List;

    .line 189
    .line 190
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    check-cast p2, Lteam/opay/pay/settings/profile/ProfileHomeItem;

    .line 195
    .line 196
    invoke-virtual {p2}, Lteam/opay/pay/settings/profile/ProfileHomeItem;->d()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    if-eqz p2, :cond_8

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_8
    const-string p2, ""

    .line 204
    .line 205
    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    :cond_9
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    sget p2, Lteam/opay/pay/R$layout;->layout_profile_home_item:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, p2, v0}, Lozf;->a(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lnc8;->bind(Landroid/view/View;)Lnc8;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->d:Lnc8;

    .line 18
    .line 19
    new-instance p1, Lteam/opay/pay/settings/profile/ProfileHomeViewHolder;

    .line 20
    .line 21
    iget-object p2, p0, Lteam/opay/pay/settings/profile/ProfileHomeAdapter;->d:Lnc8;

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    const-string p2, "binding"

    .line 26
    .line 27
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    :cond_0
    invoke-virtual {p2}, Lnc8;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const-string v0, "getRoot(...)"

    .line 36
    .line 37
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p2}, Lteam/opay/pay/settings/profile/ProfileHomeViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    return-object p1
.end method
