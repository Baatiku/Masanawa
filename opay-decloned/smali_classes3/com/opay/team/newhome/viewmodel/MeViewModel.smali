.class public final Lcom/opay/team/newhome/viewmodel/MeViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "MeViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/viewmodel/MeViewModel$Companion;,
        Lcom/opay/team/newhome/viewmodel/MeViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 #2\u00020\u00012\u00020\u0002:\u0002\u0086\u0001B9\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001a\u0010\u0018J\r\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ!\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e\u00a2\u0006\u0004\u0008!\u0010\"J\u0015\u0010#\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008#\u0010\u0018J\u0015\u0010$\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008$\u0010\u0018R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0016\u00101\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u001d\u00108\u001a\u0008\u0012\u0004\u0012\u000203028\u0006\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107R\"\u0010@\u001a\u0002098\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R$\u0010F\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010\u0014R$\u0010N\u001a\u0004\u0018\u00010G8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\u001d\u0010Q\u001a\u0008\u0012\u0004\u0012\u000209028\u0006\u00a2\u0006\u000c\n\u0004\u0008O\u00105\u001a\u0004\u0008P\u00107R\u001d\u0010T\u001a\u0008\u0012\u0004\u0012\u00020\u001b028\u0006\u00a2\u0006\u000c\n\u0004\u0008R\u00105\u001a\u0004\u0008S\u00107R)\u0010Y\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020V0U028\u0006\u00a2\u0006\u000c\n\u0004\u0008W\u00105\u001a\u0004\u0008X\u00107R)\u0010]\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020Z0U028\u0006\u00a2\u0006\u000c\n\u0004\u0008[\u00105\u001a\u0004\u0008\\\u00107R\u001d\u0010a\u001a\u0008\u0012\u0004\u0012\u00020^028\u0006\u00a2\u0006\u000c\n\u0004\u0008_\u00105\u001a\u0004\u0008`\u00107R\u001d\u0010d\u001a\u0008\u0012\u0004\u0012\u00020\u0012028\u0006\u00a2\u0006\u000c\n\u0004\u0008b\u00105\u001a\u0004\u0008c\u00107R\u001d\u0010g\u001a\u0008\u0012\u0004\u0012\u00020\u0012028\u0006\u00a2\u0006\u000c\n\u0004\u0008e\u00105\u001a\u0004\u0008f\u00107R\u001b\u0010m\u001a\u00020h8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008i\u0010j\u001a\u0004\u0008k\u0010lR\"\u0010r\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008n\u00100\u001a\u0004\u0008o\u0010\u001d\"\u0004\u0008p\u0010qR\"\u0010u\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008s\u00100\u001a\u0004\u0008t\u0010\u001d\"\u0004\u00080\u0010qR\"\u0010x\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008v\u00100\u001a\u0004\u0008;\u0010\u001d\"\u0004\u0008w\u0010qR\u0016\u0010z\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008y\u00100R\u0011\u0010|\u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008{\u0010\u001dR\u0014\u0010\u007f\u001a\u00020}8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008W\u0010~R\u0017\u0010\u0082\u0001\u001a\u00030\u0080\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008[\u0010\u0081\u0001R\u0019\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0083\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008O\u0010\u0084\u0001\u00a8\u0006\u0087\u0001"
    }
    d2 = {
        "Lcom/opay/team/newhome/viewmodel/MeViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lteam/opay/core/api/e;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/core/account/AccountRepository;",
        "accountRepository",
        "Lteam/opay/core/payment/WalletRepository;",
        "walletRepository",
        "sessionProvider",
        "Lteam/opay/core/api/Features;",
        "features",
        "Lfv;",
        "apiService",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/account/AccountRepository;Lteam/opay/core/payment/WalletRepository;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;Lfv;)V",
        "Lteam/opay/core/api/graphql/HomeBalance;",
        "data",
        "",
        "W",
        "(Lteam/opay/core/api/graphql/HomeBalance;)V",
        "Lag8;",
        "lifecycleOwner",
        "N",
        "(Lag8;)V",
        "viewLifecycleOwner",
        "S",
        "",
        "Y",
        "()Z",
        "",
        "Lcom/opay/team/newhome/bean/MeItemData;",
        "list",
        "b0",
        "(Ljava/util/List;)Ljava/util/List;",
        "y",
        "A",
        "c",
        "Landroid/app/Application;",
        "d",
        "Lteam/opay/core/account/AccountRepository;",
        "e",
        "Lteam/opay/core/payment/WalletRepository;",
        "f",
        "Lteam/opay/core/api/Features;",
        "g",
        "Lfv;",
        "h",
        "Z",
        "refreshing",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/core/api/graphql/UserInfoAggregateRsp;",
        "i",
        "Landroidx/lifecycle/MutableLiveData;",
        "U",
        "()Landroidx/lifecycle/MutableLiveData;",
        "userInfoSuccessEvent",
        "",
        "j",
        "I",
        "D",
        "()I",
        "setBalanceStatus",
        "(I)V",
        "balanceStatus",
        "k",
        "Lteam/opay/core/api/graphql/HomeBalance;",
        "F",
        "()Lteam/opay/core/api/graphql/HomeBalance;",
        "setBalanceSuccess",
        "balanceSuccess",
        "Lcom/opay/team/newhome/home/bean/AmountError;",
        "l",
        "Lcom/opay/team/newhome/home/bean/AmountError;",
        "C",
        "()Lcom/opay/team/newhome/home/bean/AmountError;",
        "setBalanceError",
        "(Lcom/opay/team/newhome/home/bean/AmountError;)V",
        "balanceError",
        "m",
        "E",
        "balanceStatusChangeEvent",
        "n",
        "M",
        "loadingEvent",
        "Lkotlin/Pair;",
        "Lcom/opay/team/newhome/bean/Data;",
        "o",
        "G",
        "confiSuccessEvent",
        "Lteam/opay/pay/api/MeSecurityRsp;",
        "p",
        "R",
        "securitySuccessEvent",
        "",
        "q",
        "Q",
        "securityFailureEvent",
        "r",
        "H",
        "dotUpdateEvent",
        "s",
        "J",
        "hideViewAndCaskBackEvent",
        "Lcom/opay/team/home/api/HomeApiService$b;",
        "t",
        "Lid8;",
        "K",
        "()Lcom/opay/team/home/api/HomeApiService$b;",
        "homeApi",
        "u",
        "P",
        "a0",
        "(Z)V",
        "resume",
        "v",
        "X",
        "isCreated",
        "w",
        "setFirstFetchSecurityBanner",
        "firstFetchSecurityBanner",
        "x",
        "isFirstFetchBalance",
        "L",
        "kycEnabled",
        "Lteam/opay/core/api/Country;",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
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
.field public static final y:Lcom/opay/team/newhome/viewmodel/MeViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final synthetic b:Lteam/opay/core/api/e;

.field public final c:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/account/AccountRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/core/payment/WalletRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lteam/opay/core/api/Features;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lfv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Z

.field public final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/api/graphql/UserInfoAggregateRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:I

.field public k:Lteam/opay/core/api/graphql/HomeBalance;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lcom/opay/team/newhome/home/bean/AmountError;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final m:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/opay/team/newhome/bean/Data;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Lteam/opay/pay/api/MeSecurityRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/viewmodel/MeViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/newhome/viewmodel/MeViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->y:Lcom/opay/team/newhome/viewmodel/MeViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/account/AccountRepository;Lteam/opay/core/payment/WalletRepository;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;Lfv;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/account/AccountRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/payment/WalletRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lteam/opay/core/api/Features;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lfv;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "accountRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "walletRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "sessionProvider"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "features"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "apiService"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 32
    .line 33
    .line 34
    iput-object p4, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->b:Lteam/opay/core/api/e;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->c:Landroid/app/Application;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->d:Lteam/opay/core/account/AccountRepository;

    .line 39
    .line 40
    iput-object p3, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->e:Lteam/opay/core/payment/WalletRepository;

    .line 41
    .line 42
    iput-object p5, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->f:Lteam/opay/core/api/Features;

    .line 43
    .line 44
    iput-object p6, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->g:Lfv;

    .line 45
    .line 46
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    const/4 p1, 0x2

    .line 54
    iput p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->j:I

    .line 55
    .line 56
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 69
    .line 70
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 71
    .line 72
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 76
    .line 77
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 83
    .line 84
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 85
    .line 86
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    .line 90
    .line 91
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 92
    .line 93
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 97
    .line 98
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 99
    .line 100
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    .line 104
    .line 105
    new-instance p1, Lb49;

    .line 106
    .line 107
    invoke-direct {p1, p0}, Lb49;-><init>(Lcom/opay/team/newhome/viewmodel/MeViewModel;)V

    .line 108
    .line 109
    .line 110
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->t:Lid8;

    .line 115
    .line 116
    const/4 p1, 0x1

    .line 117
    iput-boolean p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->w:Z

    .line 118
    .line 119
    iput-boolean p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->x:Z

    .line 120
    .line 121
    return-void
.end method

.method public static final B(Lcom/opay/team/newhome/viewmodel/MeViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/opay/team/newhome/viewmodel/MeViewModel$a;->a:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v0, v2, :cond_3

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_1
    iget-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->w:Z

    .line 30
    .line 31
    if-eqz v0, :cond_9

    .line 32
    .line 33
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    const-string p1, ""

    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_3
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->w:Z

    .line 50
    .line 51
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lteam/opay/pay/api/MeSecurityRsp;

    .line 56
    .line 57
    if-eqz p1, :cond_9

    .line 58
    .line 59
    invoke-virtual {p1}, Lteam/opay/pay/api/MeSecurityRsp;->isGrayActivate()Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    invoke-virtual {p1}, Lteam/opay/pay/api/MeSecurityRsp;->isAccountFrozen()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    const-string v0, "DISABLED"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lteam/opay/pay/api/MeSecurityRsp;->setSecurityStatus(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 83
    .line 84
    new-instance v0, Lkotlin/Pair;

    .line 85
    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    invoke-virtual {p1}, Lteam/opay/pay/api/MeSecurityRsp;->isAccountFrozen()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_8

    .line 102
    .line 103
    invoke-virtual {p1}, Lteam/opay/pay/api/MeSecurityRsp;->getCalculateKycLevel()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_6

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_6
    invoke-virtual {p1}, Lteam/opay/pay/api/MeSecurityRsp;->getCalculateKycLevel()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v2, "3"

    .line 121
    .line 122
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_7

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 130
    .line 131
    new-instance v0, Lkotlin/Pair;

    .line 132
    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 145
    .line 146
    new-instance v0, Lkotlin/Pair;

    .line 147
    .line 148
    const/4 v1, 0x2

    .line 149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_9
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 160
    .line 161
    return-object p0
.end method

.method private final K()Lcom/opay/team/home/api/HomeApiService$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->t:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/home/api/HomeApiService$b;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final O(Lcom/opay/team/newhome/viewmodel/MeViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/opay/team/newhome/viewmodel/MeViewModel$a;->a:[I

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    aget v0, v1, v0

    .line 34
    .line 35
    if-eq v0, v4, :cond_1

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    if-eq v0, v1, :cond_1

    .line 39
    .line 40
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/opay/team/newhome/bean/Data;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 53
    .line 54
    new-instance v1, Lkotlin/Pair;

    .line 55
    .line 56
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    sget-object v2, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 61
    .line 62
    if-ne p1, v2, :cond_2

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v1, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p0
.end method

.method public static final T(Lcom/opay/team/newhome/viewmodel/MeViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {p1}, Lteam/opay/core/android/arch/ResourceKt;->d(Lteam/opay/core/android/arch/Resource;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iput-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->h:Z

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->i()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method public static final V(Lcom/opay/team/newhome/viewmodel/MeViewModel;)Lcom/opay/team/home/api/HomeApiService$b;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->c:Landroid/app/Application;

    .line 4
    .line 5
    const-class v1, Lcom/opay/team/home/api/HomeApiService$b;

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/opay/team/home/api/HomeApiService$b;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final c0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    sub-int/2addr p1, p0

    .line 22
    return p1
.end method

.method public static final d0(Lcom/opay/team/newhome/bean/MeItemData;Lcom/opay/team/newhome/bean/MeItemData;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/MeItemData;->getRank()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, -0x1

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lgmf;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Number;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0}, Lcom/opay/team/newhome/bean/MeItemData;->getRank()Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0, v0}, Lgmf;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    sub-int/2addr p1, p0

    .line 35
    return p1
.end method

.method public static synthetic r(Lcom/opay/team/newhome/viewmodel/MeViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/viewmodel/MeViewModel;->z(Lcom/opay/team/newhome/viewmodel/MeViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lcom/opay/team/newhome/viewmodel/MeViewModel;)Lcom/opay/team/home/api/HomeApiService$b;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/viewmodel/MeViewModel;->V(Lcom/opay/team/newhome/viewmodel/MeViewModel;)Lcom/opay/team/home/api/HomeApiService$b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lcom/opay/team/newhome/viewmodel/MeViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/viewmodel/MeViewModel;->B(Lcom/opay/team/newhome/viewmodel/MeViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lcom/opay/team/newhome/bean/MeItemData;Lcom/opay/team/newhome/bean/MeItemData;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/viewmodel/MeViewModel;->d0(Lcom/opay/team/newhome/bean/MeItemData;Lcom/opay/team/newhome/bean/MeItemData;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic v(Lcom/opay/team/newhome/viewmodel/MeViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/viewmodel/MeViewModel;->T(Lcom/opay/team/newhome/viewmodel/MeViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w(Lcom/opay/team/newhome/viewmodel/MeViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/viewmodel/MeViewModel;->O(Lcom/opay/team/newhome/viewmodel/MeViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/viewmodel/MeViewModel;->c0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final z(Lcom/opay/team/newhome/viewmodel/MeViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->x:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iput v2, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->j:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->x:Z

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    iget v1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->j:I

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Lcom/opay/team/newhome/viewmodel/MeViewModel$a;->a:[I

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    aget v0, v1, v0

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    if-eq v0, v1, :cond_3

    .line 44
    .line 45
    if-eq v0, v2, :cond_2

    .line 46
    .line 47
    const/4 v2, 0x3

    .line 48
    if-ne v0, v2, :cond_1

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lgmf;->a(Lteam/opay/core/android/arch/Resource;)Lcom/opay/team/newhome/home/bean/AmountError;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->l:Lcom/opay/team/newhome/home/bean/AmountError;

    .line 58
    .line 59
    iput v1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->j:I

    .line 60
    .line 61
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 72
    .line 73
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_2
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lteam/opay/core/api/graphql/HomeBalance;

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/viewmodel/MeViewModel;->W(Lteam/opay/core/api/graphql/HomeBalance;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-nez v0, :cond_4

    .line 98
    .line 99
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lgmf;->a(Lteam/opay/core/android/arch/Resource;)Lcom/opay/team/newhome/home/bean/AmountError;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->l:Lcom/opay/team/newhome/home/bean/AmountError;

    .line 107
    .line 108
    iput v1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->j:I

    .line 109
    .line 110
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 111
    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lteam/opay/core/api/graphql/HomeBalance;

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/viewmodel/MeViewModel;->W(Lteam/opay/core/api/graphql/HomeBalance;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    return-object p0
.end method


# virtual methods
.method public final A(Lag8;)V
    .locals 2
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lum8;->f(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->g:Lfv;

    .line 24
    .line 25
    invoke-interface {v0}, Lfv;->B()Lretrofit2/Call;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, p0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ld49;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Ld49;-><init>(Lcom/opay/team/newhome/viewmodel/MeViewModel;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final C()Lcom/opay/team/newhome/home/bean/AmountError;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->l:Lcom/opay/team/newhome/home/bean/AmountError;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public final E()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()Lteam/opay/core/api/graphql/HomeBalance;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->k:Lteam/opay/core/api/graphql/HomeBalance;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Lcom/opay/team/newhome/bean/Data;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->w:Z

    .line 2
    .line 3
    return v0
.end method

.method public final J()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->f:Lteam/opay/core/api/Features;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/api/Feature;->KYC:Lteam/opay/core/api/Feature;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/core/api/Features;->a(Lteam/opay/core/api/Feature;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final M()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N(Lag8;)V
    .locals 12
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 7
    .line 8
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->appId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v2, v1

    .line 25
    :goto_0
    new-instance v11, Lteam/opay/pay/home/bean/AccountEntranceReq;

    .line 26
    .line 27
    invoke-static {v0}, Ljmf;->o(Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    move-object v5, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v5, v1

    .line 40
    :goto_1
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionCode()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->role()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    :goto_2
    move-object v7, v0

    .line 64
    goto :goto_4

    .line 65
    :cond_4
    :goto_3
    const-string v0, ""

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :goto_4
    if-nez v2, :cond_5

    .line 69
    .line 70
    const-string v2, "1"

    .line 71
    .line 72
    :cond_5
    move-object v9, v2

    .line 73
    const/4 v10, 0x4

    .line 74
    const-string v8, "1"

    .line 75
    .line 76
    move-object v3, v11

    .line 77
    invoke-direct/range {v3 .. v10}, Lteam/opay/pay/home/bean/AccountEntranceReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {p0}, Lcom/opay/team/newhome/viewmodel/MeViewModel;->K()Lcom/opay/team/home/api/HomeApiService$b;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v1, v11}, Lcom/opay/team/home/api/HomeApiService$b;->f(Lteam/opay/pay/home/bean/AccountEntranceReq;)Lretrofit2/Call;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-class v1, Lcom/opay/team/newhome/bean/Data;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->c(Ljava/lang/Class;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v1, "MeConfigDefaultLocalData.json"

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->f(Ljava/lang/String;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v1, "200"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->e(Ljava/lang/String;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    new-instance v1, Ly39;

    .line 124
    .line 125
    invoke-direct {v1, p0}, Ly39;-><init>(Lcom/opay/team/newhome/viewmodel/MeViewModel;)V

    .line 126
    .line 127
    .line 128
    new-instance v2, Lcom/opay/team/newhome/viewmodel/MeViewModel$b;

    .line 129
    .line 130
    invoke-direct {v2, v1}, Lcom/opay/team/newhome/viewmodel/MeViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public final P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Q()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final R()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Lteam/opay/pay/api/MeSecurityRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final S(Lag8;)V
    .locals 2
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewLifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->h:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->c:Landroid/app/Application;

    .line 11
    .line 12
    invoke-static {v0}, Lum8;->f(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->h:Z

    .line 21
    .line 22
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->d:Lteam/opay/core/account/AccountRepository;

    .line 23
    .line 24
    const-string v1, "ME"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lteam/opay/core/account/AccountRepository;->p(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Le49;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Le49;-><init>(Lcom/opay/team/newhome/viewmodel/MeViewModel;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public final U()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/api/graphql/UserInfoAggregateRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final W(Lteam/opay/core/api/graphql/HomeBalance;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->k:Lteam/opay/core/api/graphql/HomeBalance;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->j:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final X()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Y()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/UserInfoAggregateRsp;->F()Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lgmf;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public final Z(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public final a0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public final b0(Ljava/util/List;)Ljava/util/List;
    .locals 39
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/MeItemData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/MeItemData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    add-int/lit8 v5, v2, 0x1

    .line 30
    .line 31
    if-gez v2, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 34
    .line 35
    .line 36
    :cond_0
    check-cast v3, Lcom/opay/team/newhome/bean/MeItemData;

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Lcom/opay/team/newhome/bean/MeItemData;->setCardType(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/opay/team/newhome/bean/MeItemData;->getGroupIndex()Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v4, -0x1

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v2, v4}, Lgmf;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/Number;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/util/ArrayList;

    .line 69
    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    new-instance v4, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :goto_1
    move v2, v5

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v2, Lz39;

    .line 103
    .line 104
    invoke-direct {v2}, Lz39;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->M0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_5

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Ljava/util/Map$Entry;

    .line 126
    .line 127
    new-instance v3, Lcom/opay/team/newhome/bean/MeItemData;

    .line 128
    .line 129
    move-object v5, v3

    .line 130
    const/16 v20, 0x3ffe

    .line 131
    .line 132
    const/16 v21, 0x0

    .line 133
    .line 134
    const/4 v6, 0x2

    .line 135
    const/4 v7, 0x0

    .line 136
    const/4 v8, 0x0

    .line 137
    const/4 v9, 0x0

    .line 138
    const/4 v10, 0x0

    .line 139
    const/4 v11, 0x0

    .line 140
    const/4 v12, 0x0

    .line 141
    const/4 v13, 0x0

    .line 142
    const/4 v14, 0x0

    .line 143
    const/4 v15, 0x0

    .line 144
    const/16 v16, 0x0

    .line 145
    .line 146
    const/16 v17, 0x0

    .line 147
    .line 148
    const/16 v18, 0x0

    .line 149
    .line 150
    const/16 v19, 0x0

    .line 151
    .line 152
    invoke-direct/range {v5 .. v21}, Lcom/opay/team/newhome/bean/MeItemData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZZLteam/opay/odialog/net/AdDataItem;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Ljava/lang/Iterable;

    .line 163
    .line 164
    new-instance v3, La49;

    .line 165
    .line 166
    invoke-direct {v3}, La49;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->M0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-nez v3, :cond_4

    .line 178
    .line 179
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Lcom/opay/team/newhome/bean/MeItemData;

    .line 184
    .line 185
    if-eqz v3, :cond_3

    .line 186
    .line 187
    invoke-virtual {v3, v4}, Lcom/opay/team/newhome/bean/MeItemData;->setHasTop(Z)V

    .line 188
    .line 189
    .line 190
    :cond_3
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    check-cast v3, Lcom/opay/team/newhome/bean/MeItemData;

    .line 195
    .line 196
    if-eqz v3, :cond_4

    .line 197
    .line 198
    invoke-virtual {v3, v4}, Lcom/opay/team/newhome/bean/MeItemData;->setHasButtom(Z)V

    .line 199
    .line 200
    .line 201
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    .line 203
    .line 204
    new-instance v2, Lcom/opay/team/newhome/bean/MeItemData;

    .line 205
    .line 206
    move-object v5, v2

    .line 207
    const/16 v20, 0x3ffe

    .line 208
    .line 209
    const/16 v21, 0x0

    .line 210
    .line 211
    const/4 v6, 0x3

    .line 212
    const/4 v7, 0x0

    .line 213
    const/4 v8, 0x0

    .line 214
    const/4 v9, 0x0

    .line 215
    const/4 v10, 0x0

    .line 216
    const/4 v11, 0x0

    .line 217
    const/4 v12, 0x0

    .line 218
    const/4 v13, 0x0

    .line 219
    const/4 v14, 0x0

    .line 220
    const/4 v15, 0x0

    .line 221
    const/16 v16, 0x0

    .line 222
    .line 223
    const/16 v17, 0x0

    .line 224
    .line 225
    const/16 v18, 0x0

    .line 226
    .line 227
    const/16 v19, 0x0

    .line 228
    .line 229
    invoke-direct/range {v5 .. v21}, Lcom/opay/team/newhome/bean/MeItemData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZZLteam/opay/odialog/net/AdDataItem;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 230
    .line 231
    .line 232
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_5
    new-instance v0, Lcom/opay/team/newhome/bean/MeItemData;

    .line 237
    .line 238
    move-object/from16 v22, v0

    .line 239
    .line 240
    const/16 v37, 0x3ffe

    .line 241
    .line 242
    const/16 v38, 0x0

    .line 243
    .line 244
    const/16 v23, 0x4

    .line 245
    .line 246
    const/16 v24, 0x0

    .line 247
    .line 248
    const/16 v25, 0x0

    .line 249
    .line 250
    const/16 v26, 0x0

    .line 251
    .line 252
    const/16 v27, 0x0

    .line 253
    .line 254
    const/16 v28, 0x0

    .line 255
    .line 256
    const/16 v29, 0x0

    .line 257
    .line 258
    const/16 v30, 0x0

    .line 259
    .line 260
    const/16 v31, 0x0

    .line 261
    .line 262
    const/16 v32, 0x0

    .line 263
    .line 264
    const/16 v33, 0x0

    .line 265
    .line 266
    const/16 v34, 0x0

    .line 267
    .line 268
    const/16 v35, 0x0

    .line 269
    .line 270
    const/16 v36, 0x0

    .line 271
    .line 272
    invoke-direct/range {v22 .. v38}, Lcom/opay/team/newhome/bean/MeItemData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZZLteam/opay/odialog/net/AdDataItem;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 273
    .line 274
    .line 275
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    return-object v1
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->b:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public o()Lteam/opay/core/api/Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->b:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->o()Lteam/opay/core/api/Country;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public p()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->b:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final y(Lag8;)V
    .locals 4
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lum8;->f(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/MeViewModel;->e:Lteam/opay/core/payment/WalletRepository;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static {v0, v3, v1, v2}, Lteam/opay/core/payment/WalletRepository;->n(Lteam/opay/core/payment/WalletRepository;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lc49;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lc49;-><init>(Lcom/opay/team/newhome/viewmodel/MeViewModel;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lcom/opay/team/newhome/viewmodel/MeViewModel$b;

    .line 38
    .line 39
    invoke-direct {v2, v1}, Lcom/opay/team/newhome/viewmodel/MeViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
