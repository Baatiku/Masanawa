.class public final Lteam/opay/pay/home/security/SwitchButtonViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GestureSettingAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/pay/home/security/SwitchButtonViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lz59;",
        "binding",
        "<init>",
        "(Lz59;)V",
        "Lteam/opay/pay/home/security/GestureSetting;",
        "setting",
        "",
        "isBottom",
        "",
        "b",
        "(Lteam/opay/pay/home/security/GestureSetting;Z)V",
        "a",
        "Lz59;",
        "d",
        "()Lz59;",
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
.field public final a:Lz59;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz59;)V
    .locals 1
    .param p1    # Lz59;
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
    invoke-virtual {p1}, Lz59;->a()Landroid/widget/LinearLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lteam/opay/pay/home/security/SwitchButtonViewHolder;->a:Lz59;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Z)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/SwitchButtonViewHolder;->c(Z)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Z)Ljava/lang/Object;
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
    iget-object v0, p0, Lteam/opay/pay/home/security/SwitchButtonViewHolder;->a:Lz59;

    .line 7
    .line 8
    iget-object v0, v0, Lz59;->b:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/pay/home/security/GestureSetting;->getTextRes()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lxk8;->a:Lxk8;

    .line 18
    .line 19
    new-instance v0, Ldbe;

    .line 20
    .line 21
    invoke-direct {v0, p2}, Ldbe;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {p1, v1, v0, p2, v1}, Lxk8;->l(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final d()Lz59;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/SwitchButtonViewHolder;->a:Lz59;

    .line 2
    .line 3
    return-object v0
.end method
