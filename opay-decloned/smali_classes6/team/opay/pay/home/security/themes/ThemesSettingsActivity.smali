.class public final Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;
.super Lteam/opay/pay/home/security/themes/Hilt_ThemesSettingsActivity;
.source "ThemesSettingsActivity.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/security/themes/ThemesSettingsActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u0019\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nR\u001b\u0010\u0010\u001a\u00020\u000b8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0015\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "",
        "initView",
        "F",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Llg;",
        "e",
        "Lid8;",
        "E",
        "()Llg;",
        "viewBinding",
        "Lteam/opay/pay/home/security/themes/ThemesAdapter;",
        "f",
        "D",
        "()Lteam/opay/pay/home/security/themes/ThemesAdapter;",
        "themeAdapter",
        "",
        "g",
        "Ljava/lang/String;",
        "currentThemeMode",
        "h",
        "Companion",
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


# static fields
.field public static final h:Lteam/opay/pay/home/security/themes/ThemesSettingsActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->h:Lteam/opay/pay/home/security/themes/ThemesSettingsActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_themes_settings:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/home/security/themes/Hilt_ThemesSettingsActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Leje;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Leje;-><init>(Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lfje;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lfje;-><init>(Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->f:Lid8;

    .line 27
    .line 28
    sget-object v0, Lc03;->a:Lc03;

    .line 29
    .line 30
    invoke-virtual {v0}, Lc03;->a()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->g:Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/home/security/themes/ThemesAdapter;Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->H(Lteam/opay/pay/home/security/themes/ThemesAdapter;Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;)Llg;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->I(Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;)Llg;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;)Lteam/opay/pay/home/security/themes/ThemesAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->G(Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;)Lteam/opay/pay/home/security/themes/ThemesAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final F()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v9, Lteam/opay/pay/home/security/themes/ThemeItem;

    .line 9
    .line 10
    sget v2, Lteam/opay/pay/R$string;->osdk_themes_light_mode:I

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const-string v10, "getString(...)"

    .line 17
    .line 18
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, v0, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->g:Ljava/lang/String;

    .line 22
    .line 23
    const-string v3, "light"

    .line 24
    .line 25
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const/4 v7, 0x4

    .line 30
    const/4 v8, 0x0

    .line 31
    const-string v3, "light"

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    move-object v2, v9

    .line 35
    invoke-direct/range {v2 .. v8}, Lteam/opay/pay/home/security/themes/ThemeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance v2, Lteam/opay/pay/home/security/themes/ThemeItem;

    .line 42
    .line 43
    sget v3, Lteam/opay/pay/R$string;->osdk_themes_dark_mode:I

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v13

    .line 49
    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v3, v0, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->g:Ljava/lang/String;

    .line 53
    .line 54
    const-string v4, "dark"

    .line 55
    .line 56
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v15

    .line 60
    const/16 v16, 0x4

    .line 61
    .line 62
    const/16 v17, 0x0

    .line 63
    .line 64
    const-string v12, "dark"

    .line 65
    .line 66
    const/4 v14, 0x0

    .line 67
    move-object v11, v2

    .line 68
    invoke-direct/range {v11 .. v17}, Lteam/opay/pay/home/security/themes/ThemeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    new-instance v2, Lteam/opay/pay/home/security/themes/ThemeItem;

    .line 75
    .line 76
    sget v3, Lteam/opay/pay/R$string;->osdk_themes_system_default:I

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sget v4, Lteam/opay/pay/R$string;->osdk_themes_system_default_sub:I

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    iget-object v5, v0, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->g:Ljava/lang/String;

    .line 92
    .line 93
    const-string v6, "follow_system"

    .line 94
    .line 95
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    invoke-direct {v2, v6, v3, v4, v5}, Lteam/opay/pay/home/security/themes/ThemeItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->D()Lteam/opay/pay/home/security/themes/ThemesAdapter;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public static final G(Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;)Lteam/opay/pay/home/security/themes/ThemesAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/security/themes/ThemesAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/home/security/themes/ThemesAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lgje;

    .line 7
    .line 8
    invoke-direct {v1, v0, p0}, Lgje;-><init>(Lteam/opay/pay/home/security/themes/ThemesAdapter;Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final H(Lteam/opay/pay/home/security/themes/ThemesAdapter;Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string p3, "getData(...)"

    .line 6
    .line 7
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lteam/opay/pay/home/security/themes/ThemeItem;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Lteam/opay/pay/home/security/themes/ThemeItem;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p2, 0x0

    .line 24
    :goto_0
    iget-object p4, p1, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->g:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p4

    .line 30
    if-eqz p4, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    if-eqz p4, :cond_2

    .line 49
    .line 50
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p4

    .line 54
    check-cast p4, Lteam/opay/pay/home/security/themes/ThemeItem;

    .line 55
    .line 56
    invoke-virtual {p4}, Lteam/opay/pay/home/security/themes/ThemeItem;->a()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p4, v0}, Lteam/opay/pay/home/security/themes/ThemeItem;->e(Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    sget-object p3, Lc03;->a:Lc03;

    .line 69
    .line 70
    if-nez p2, :cond_3

    .line 71
    .line 72
    const-string p4, ""

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    move-object p4, p2

    .line 76
    :goto_2
    invoke-virtual {p3, p4}, Lc03;->g(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Lum8;->g(Landroid/app/Activity;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3}, Lc03;->b()V

    .line 86
    .line 87
    .line 88
    sget-object p0, Lx7b;->a:Lx7b;

    .line 89
    .line 90
    const-string p1, "theme"

    .line 91
    .line 92
    invoke-static {p1, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/4 p2, 0x1

    .line 97
    new-array p2, p2, [Lkotlin/Pair;

    .line 98
    .line 99
    const/4 p3, 0x0

    .line 100
    aput-object p1, p2, p3

    .line 101
    .line 102
    const-string p1, "themes_item_click"

    .line 103
    .line 104
    invoke-virtual {p0, p1, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public static final I(Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;)Llg;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Llg;->inflate(Landroid/view/LayoutInflater;)Llg;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private final initView()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->E()Llg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Llg;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->D()Lteam/opay/pay/home/security/themes/ThemesAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    invoke-static {v2}, Lkmf;->g(I)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/16 v2, 0x10

    .line 31
    .line 32
    invoke-static {v2}, Lkmf;->g(I)I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    const/16 v10, 0x6c

    .line 37
    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    move-object v2, v1

    .line 45
    invoke-direct/range {v2 .. v11}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final D()Lteam/opay/pay/home/security/themes/ThemesAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/security/themes/ThemesAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public E()Llg;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Llg;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->E()Llg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/home/security/themes/Hilt_ThemesSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->initView()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lteam/opay/pay/home/security/themes/ThemesSettingsActivity;->F()V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lx7b;->a:Lx7b;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [Lkotlin/Pair;

    .line 14
    .line 15
    const-string v1, "themes_setting_show"

    .line 16
    .line 17
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
