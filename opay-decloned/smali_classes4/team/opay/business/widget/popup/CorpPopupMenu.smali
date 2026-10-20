.class public final Lteam/opay/business/widget/popup/CorpPopupMenu;
.super Ljava/lang/Object;
.source "CorpPopupMenu.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\nR\u0014\u0010\r\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0013\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0014\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/business/widget/popup/CorpPopupMenu;",
        "",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/View;",
        "anchor",
        "",
        "gravity",
        "<init>",
        "(Landroid/content/Context;Landroid/view/View;I)V",
        "(Landroid/content/Context;Landroid/view/View;)V",
        "a",
        "I",
        "popupStyleRes",
        "Landroidx/appcompat/view/ContextThemeWrapper;",
        "b",
        "Landroidx/appcompat/view/ContextThemeWrapper;",
        "wrapper",
        "Landroidx/appcompat/widget/PopupMenu;",
        "c",
        "Lid8;",
        "()Landroidx/appcompat/widget/PopupMenu;",
        "popupMenu",
        "Landroidx/appcompat/view/menu/MenuPopupHelper;",
        "d",
        "getPopupHelper",
        "()Landroidx/appcompat/view/menu/MenuPopupHelper;",
        "popupHelper",
        "business-widget_release"
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
.field public final a:I

.field public final b:Landroidx/appcompat/view/ContextThemeWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lteam/opay/business/widget/popup/CorpPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lteam/opay/business/widget/R$style;->widget_popup_menu:I

    iput v0, p0, Lteam/opay/business/widget/popup/CorpPopupMenu;->a:I

    .line 3
    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lteam/opay/business/widget/popup/CorpPopupMenu;->b:Landroidx/appcompat/view/ContextThemeWrapper;

    .line 4
    new-instance p1, Lht2;

    invoke-direct {p1, p0, p2, p3}, Lht2;-><init>(Lteam/opay/business/widget/popup/CorpPopupMenu;Landroid/view/View;I)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/business/widget/popup/CorpPopupMenu;->c:Lid8;

    .line 5
    new-instance p1, Lit2;

    invoke-direct {p1, p0, p2, p3}, Lit2;-><init>(Lteam/opay/business/widget/popup/CorpPopupMenu;Landroid/view/View;I)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/business/widget/popup/CorpPopupMenu;->d:Lid8;

    return-void
.end method

.method public static synthetic a(Lteam/opay/business/widget/popup/CorpPopupMenu;Landroid/view/View;I)Landroidx/appcompat/widget/PopupMenu;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/widget/popup/CorpPopupMenu;->e(Lteam/opay/business/widget/popup/CorpPopupMenu;Landroid/view/View;I)Landroidx/appcompat/widget/PopupMenu;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/business/widget/popup/CorpPopupMenu;Landroid/view/View;I)Landroidx/appcompat/view/menu/MenuPopupHelper;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/widget/popup/CorpPopupMenu;->d(Lteam/opay/business/widget/popup/CorpPopupMenu;Landroid/view/View;I)Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Lteam/opay/business/widget/popup/CorpPopupMenu;Landroid/view/View;I)Landroidx/appcompat/view/menu/MenuPopupHelper;
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/widget/popup/CorpPopupMenu;->b:Landroidx/appcompat/view/ContextThemeWrapper;

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/business/widget/popup/CorpPopupMenu;->c()Landroidx/appcompat/widget/PopupMenu;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/widget/PopupMenu;->a()Landroid/view/Menu;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v2, "null cannot be cast to non-null type androidx.appcompat.view.menu.MenuBuilder"

    .line 14
    .line 15
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast p0, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 19
    .line 20
    invoke-direct {v0, v1, p0, p1}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->h(I)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->g(Z)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static final e(Lteam/opay/business/widget/popup/CorpPopupMenu;Landroid/view/View;I)Landroidx/appcompat/widget/PopupMenu;
    .locals 7

    .line 1
    new-instance v6, Landroidx/appcompat/widget/PopupMenu;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/widget/popup/CorpPopupMenu;->b:Landroidx/appcompat/view/ContextThemeWrapper;

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    iget v5, p0, Lteam/opay/business/widget/popup/CorpPopupMenu;->a:I

    .line 7
    .line 8
    move-object v0, v6

    .line 9
    move-object v2, p1

    .line 10
    move v3, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    .line 12
    .line 13
    .line 14
    return-object v6
.end method


# virtual methods
.method public final c()Landroidx/appcompat/widget/PopupMenu;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/popup/CorpPopupMenu;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/appcompat/widget/PopupMenu;

    .line 8
    .line 9
    return-object v0
.end method
