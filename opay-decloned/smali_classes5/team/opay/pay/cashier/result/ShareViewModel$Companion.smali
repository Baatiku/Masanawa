.class public final Lteam/opay/pay/cashier/result/ShareViewModel$Companion;
.super Ljava/lang/Object;
.source "ShareViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/cashier/result/ShareViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/ShareViewModel$Companion;",
        "",
        "<init>",
        "()V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "Lteam/opay/pay/cashier/result/ShareViewModel;",
        "a",
        "(Landroidx/fragment/app/Fragment;)Lteam/opay/pay/cashier/result/ShareViewModel;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/cashier/result/ShareViewModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/Fragment;)Lteam/opay/pay/cashier/result/ShareViewModel;
    .locals 6
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance v2, Lteam/opay/core/android/arch/AppExecutors;

    .line 21
    .line 22
    invoke-direct {v2}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lpy;->a(Landroid/app/Application;)Lteam/opay/pay/database/AppDatabase;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    new-instance v4, Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3}, Lteam/opay/pay/database/AppDatabase;->f0()Lteam/opay/pay/transfer/contact/TransferContactDao;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v5, v1

    .line 39
    :goto_0
    if-eqz v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {v3}, Lteam/opay/pay/database/AppDatabase;->S()Lteam/opay/pay/transfer/a;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :cond_2
    invoke-direct {v4, v0, v2, v5, v1}, Lteam/opay/pay/transfer/contact/TransferContactRepository;-><init>(Landroid/app/Application;Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/transfer/contact/TransferContactDao;Lteam/opay/pay/transfer/a;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lteam/opay/pay/cashier/result/ShareShortUrlRepository;

    .line 49
    .line 50
    sget-object v3, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 51
    .line 52
    const-class v5, Lfv;

    .line 53
    .line 54
    invoke-virtual {v3, v0, v5}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lfv;

    .line 59
    .line 60
    invoke-direct {v1, v2, v3}, Lteam/opay/pay/cashier/result/ShareShortUrlRepository;-><init>(Lteam/opay/core/android/arch/AppExecutors;Lfv;)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Landroidx/lifecycle/ViewModelProvider;

    .line 64
    .line 65
    new-instance v3, Lteam/opay/pay/cashier/result/ShareViewModel$ViewModelFactory;

    .line 66
    .line 67
    invoke-direct {v3, v0, v4, v1}, Lteam/opay/pay/cashier/result/ShareViewModel$ViewModelFactory;-><init>(Landroid/app/Application;Lteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/cashier/result/ShareShortUrlRepository;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, p1, v3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Lr0g;Landroidx/lifecycle/ViewModelProvider$a;)V

    .line 71
    .line 72
    .line 73
    const-class p1, Lteam/opay/pay/cashier/result/ShareViewModel;

    .line 74
    .line 75
    invoke-virtual {v2, p1}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lteam/opay/pay/cashier/result/ShareViewModel;

    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_3
    :goto_1
    return-object v1
.end method
