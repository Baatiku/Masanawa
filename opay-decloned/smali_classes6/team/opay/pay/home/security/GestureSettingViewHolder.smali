.class public final Lteam/opay/pay/home/security/GestureSettingViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GestureSettingAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lteam/opay/pay/home/security/GestureSettingViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "La69;",
        "binding",
        "<init>",
        "(La69;)V",
        "Lteam/opay/pay/home/security/GestureSetting;",
        "setting",
        "",
        "isBottom",
        "",
        "b",
        "(Lteam/opay/pay/home/security/GestureSetting;Z)V",
        "a",
        "La69;",
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
.field public final a:La69;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(La69;)V
    .locals 1
    .param p1    # La69;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    invoke-virtual {p1}, La69;->a()Landroid/widget/LinearLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lteam/opay/pay/home/security/GestureSettingViewHolder;->a:La69;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Z)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/GestureSettingViewHolder;->c(Z)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Z)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final b(Lteam/opay/pay/home/security/GestureSetting;Z)V
    .locals 2
    .param p1    # Lteam/opay/pay/home/security/GestureSetting;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "setting"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/home/security/GestureSettingViewHolder;->a:La69;

    .line 7
    .line 8
    iget-object v0, v0, La69;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 9
    .line 10
    const-string v1, "chevron"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lteam/opay/pay/home/security/GestureSetting;->getShowChevron()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lteam/opay/pay/home/security/GestureSettingViewHolder;->a:La69;

    .line 23
    .line 24
    iget-object v0, v0, La69;->c:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/pay/home/security/GestureSetting;->getTextRes()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lxk8;->a:Lxk8;

    .line 34
    .line 35
    new-instance v0, Lso6;

    .line 36
    .line 37
    invoke-direct {v0, p2}, Lso6;-><init>(Z)V

    .line 38
    .line 39
    .line 40
    const/4 p2, 0x1

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-static {p1, v1, v0, p2, v1}, Lxk8;->l(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
