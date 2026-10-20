.class public final Lteam/opay/pay/cashier/result/ShareViewModel$ViewModelFactory;
.super Ljava/lang/Object;
.source "ShareViewModel.kt"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/cashier/result/ShareViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewModelFactory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\'\u0010\u000e\u001a\u00028\u0000\"\u0008\u0008\u0000\u0010\u000b*\u00020\n2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0012R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/ShareViewModel$ViewModelFactory;",
        "Landroidx/lifecycle/ViewModelProvider$a;",
        "Landroid/app/Application;",
        "application",
        "Lteam/opay/pay/transfer/contact/TransferContactRepository;",
        "repository",
        "Lteam/opay/pay/cashier/result/ShareShortUrlRepository;",
        "shareShortUrlRepository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/cashier/result/ShareShortUrlRepository;)V",
        "Landroidx/lifecycle/ViewModel;",
        "T",
        "Ljava/lang/Class;",
        "modelClass",
        "b",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
        "a",
        "Landroid/app/Application;",
        "Lteam/opay/pay/transfer/contact/TransferContactRepository;",
        "c",
        "Lteam/opay/pay/cashier/result/ShareShortUrlRepository;",
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
.field public final a:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/pay/transfer/contact/TransferContactRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/pay/cashier/result/ShareShortUrlRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/cashier/result/ShareShortUrlRepository;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/TransferContactRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/cashier/result/ShareShortUrlRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "repository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "shareShortUrlRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/pay/cashier/result/ShareViewModel$ViewModelFactory;->a:Landroid/app/Application;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/cashier/result/ShareViewModel$ViewModelFactory;->b:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/pay/cashier/result/ShareViewModel$ViewModelFactory;->c:Lteam/opay/pay/cashier/result/ShareShortUrlRepository;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lp0g;->b(Landroidx/lifecycle/ViewModelProvider$a;Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "modelClass"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lteam/opay/pay/cashier/result/ShareViewModel;

    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareViewModel$ViewModelFactory;->a:Landroid/app/Application;

    .line 9
    .line 10
    iget-object v1, p0, Lteam/opay/pay/cashier/result/ShareViewModel$ViewModelFactory;->b:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 11
    .line 12
    iget-object v2, p0, Lteam/opay/pay/cashier/result/ShareViewModel$ViewModelFactory;->c:Lteam/opay/pay/cashier/result/ShareShortUrlRepository;

    .line 13
    .line 14
    invoke-direct {p1, v0, v1, v2}, Lteam/opay/pay/cashier/result/ShareViewModel;-><init>(Landroid/app/Application;Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/cashier/result/ShareShortUrlRepository;)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method
