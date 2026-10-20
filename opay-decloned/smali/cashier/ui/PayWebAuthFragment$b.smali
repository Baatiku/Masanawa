.class public final Lcashier/ui/PayWebAuthFragment$b;
.super Landroid/webkit/WebChromeClient;
.source "PayWebAuthFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/ui/PayWebAuthFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "cashier/ui/PayWebAuthFragment$b",
        "Landroid/webkit/WebChromeClient;",
        "Landroid/webkit/WebView;",
        "view",
        "",
        "newProgress",
        "",
        "onProgressChanged",
        "(Landroid/webkit/WebView;I)V",
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
.field public final synthetic a:Lcashier/ui/PayWebAuthFragment;


# direct methods
.method public constructor <init>(Lcashier/ui/PayWebAuthFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcashier/ui/PayWebAuthFragment$b;->a:Lcashier/ui/PayWebAuthFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcashier/ui/PayWebAuthFragment$b;->a:Lcashier/ui/PayWebAuthFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcashier/ui/PayWebAuthFragment$b;->a:Lcashier/ui/PayWebAuthFragment;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lcashier/ui/PayWebAuthFragment$b;->a:Lcashier/ui/PayWebAuthFragment;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object p1, p0, Lcashier/ui/PayWebAuthFragment$b;->a:Lcashier/ui/PayWebAuthFragment;

    .line 27
    .line 28
    invoke-static {p1}, Lcashier/ui/PayWebAuthFragment;->K(Lcashier/ui/PayWebAuthFragment;)Lcashier/model/CashierViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcashier/model/CashierViewModel;->V()Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/16 v0, 0x64

    .line 37
    .line 38
    if-eq p2, v0, :cond_1

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    if-ne p2, v0, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, Lcashier/ui/PayWebAuthFragment$b;->a:Lcashier/ui/PayWebAuthFragment;

    .line 53
    .line 54
    invoke-static {p1}, Lcashier/ui/PayWebAuthFragment;->I(Lcashier/ui/PayWebAuthFragment;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    sget-object p1, Lx8b;->a:Lx8b;

    .line 61
    .line 62
    invoke-virtual {p1}, Lx8b;->a()V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_1
    return-void
.end method
