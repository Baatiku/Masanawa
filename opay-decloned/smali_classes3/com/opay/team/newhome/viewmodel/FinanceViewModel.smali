.class public final Lcom/opay/team/newhome/viewmodel/FinanceViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "FinanceViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J)\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ/\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u000f2\u001a\u0010 \u001a\u0016\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001dj\n\u0012\u0004\u0012\u00020\u001e\u0018\u0001`\u001f\u00a2\u0006\u0004\u0008!\u0010\"J\r\u0010#\u001a\u00020\u0015\u00a2\u0006\u0004\u0008#\u0010\u001cJ\u0015\u0010%\u001a\u00020\n2\u0006\u0010$\u001a\u00020\u0015\u00a2\u0006\u0004\u0008%\u0010&J\u0015\u0010(\u001a\u00020\n2\u0006\u0010\'\u001a\u00020\u0015\u00a2\u0006\u0004\u0008(\u0010&J\u001b\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008)\u0010\u0012J\u000f\u0010+\u001a\u0004\u0018\u00010*\u00a2\u0006\u0004\u0008+\u0010,J\u001b\u0010.\u001a\u00020\u00172\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u00a2\u0006\u0004\u0008.\u0010/R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0019\u00106\u001a\u0004\u0018\u00010\u00178\u0006\u00a2\u0006\u000c\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105R$\u0010<\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010\u000cR%\u0010C\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010>0=8\u0006\u00a2\u0006\u000c\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010BR\u001f\u0010G\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010D0=8\u0006\u00a2\u0006\u000c\n\u0004\u0008E\u0010@\u001a\u0004\u0008F\u0010BR\u001f\u0010J\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010D0=8\u0006\u00a2\u0006\u000c\n\u0004\u0008H\u0010@\u001a\u0004\u0008I\u0010BR\u0018\u0010M\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0018\u0010O\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010LR\u001b\u0010U\u001a\u00020P8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Q\u0010R\u001a\u0004\u0008S\u0010TR\u001b\u0010Z\u001a\u00020V8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008W\u0010R\u001a\u0004\u0008X\u0010YR\u001d\u0010]\u001a\u0008\u0012\u0004\u0012\u00020\u00150=8\u0006\u00a2\u0006\u000c\n\u0004\u0008[\u0010@\u001a\u0004\u0008\\\u0010BR\u001d\u0010a\u001a\u0008\u0012\u0004\u0012\u00020^0=8\u0006\u00a2\u0006\u000c\n\u0004\u0008_\u0010@\u001a\u0004\u0008`\u0010BR\"\u0010f\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010\u001c\"\u0004\u0008e\u0010&R\u001b\u0010k\u001a\u00020g8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008h\u0010R\u001a\u0004\u0008i\u0010jR\"\u0010n\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010c\u001a\u0004\u0008l\u0010\u001c\"\u0004\u0008m\u0010&R(\u0010s\u001a\u0008\u0012\u0004\u0012\u00020\u00150=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008o\u0010@\u001a\u0004\u0008p\u0010B\"\u0004\u0008q\u0010rR\u001b\u0010x\u001a\u00020t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008u\u0010R\u001a\u0004\u0008v\u0010wR\"\u0010|\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008y\u0010c\u001a\u0004\u0008z\u0010\u001c\"\u0004\u0008{\u0010&R&\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0013\n\u0004\u0008}\u00103\u001a\u0004\u0008~\u00105\"\u0005\u0008\u007f\u0010\u0080\u0001R\u0018\u0010\u0083\u0001\u001a\u00020^8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0082\u0001\u0010FR\u0012\u0010\u0084\u0001\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010\u001cR\u0017\u0010\u0087\u0001\u001a\u00030\u0085\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008h\u0010\u0086\u0001R\u0017\u0010\u008a\u0001\u001a\u00030\u0088\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008\t\u0010\u0089\u0001R\u0019\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008b\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008_\u0010\u008c\u0001\u00a8\u0006\u008e\u0001"
    }
    d2 = {
        "Lcom/opay/team/newhome/viewmodel/FinanceViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lteam/opay/core/api/e;",
        "sessionProvider",
        "Landroid/app/Application;",
        "app",
        "<init>",
        "(Lteam/opay/core/api/e;Landroid/app/Application;)V",
        "Lcom/opay/team/newhome/bean/FinanceNewData;",
        "p",
        "",
        "B",
        "(Lcom/opay/team/newhome/bean/FinanceNewData;)V",
        "Landroid/content/Context;",
        "context",
        "",
        "Lcom/opay/team/newhome/finance/InvestmentItem;",
        "C",
        "(Landroid/content/Context;)Ljava/util/List;",
        "Lag8;",
        "lifecycleOwner",
        "",
        "noCache",
        "",
        "defaultFile",
        "c0",
        "(Lag8;ZLjava/lang/String;)V",
        "a0",
        "()Z",
        "Ljava/util/ArrayList;",
        "Lcom/opay/team/newhome/bean/FinanceDetailData;",
        "Lkotlin/collections/ArrayList;",
        "data",
        "F",
        "(Ljava/util/ArrayList;)Ljava/util/List;",
        "D",
        "delay",
        "E",
        "(Z)V",
        "isInit",
        "j0",
        "Q",
        "Lcom/opay/team/newhome/bean/FinanceModuleList;",
        "T",
        "()Lcom/opay/team/newhome/bean/FinanceModuleList;",
        "list",
        "G",
        "(Ljava/util/List;)Ljava/lang/String;",
        "b",
        "Lteam/opay/core/api/e;",
        "c",
        "Ljava/lang/String;",
        "getToken",
        "()Ljava/lang/String;",
        "token",
        "d",
        "Lcom/opay/team/newhome/bean/FinanceNewData;",
        "J",
        "()Lcom/opay/team/newhome/bean/FinanceNewData;",
        "f0",
        "financeNewCache",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "e",
        "Landroidx/lifecycle/MutableLiveData;",
        "K",
        "()Landroidx/lifecycle/MutableLiveData;",
        "financeNewData",
        "Lteam/opay/odialog/net/AdDataItem;",
        "f",
        "I",
        "financeFloatEvent",
        "g",
        "L",
        "financePopEvent",
        "h",
        "Lteam/opay/odialog/net/AdDataItem;",
        "financePopCache",
        "i",
        "financeFloatCache",
        "Lteam/opay/core/settings/SettingsStorage;",
        "j",
        "Lid8;",
        "U",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "Lteam/opay/core/settings/NoClearStorage;",
        "k",
        "R",
        "()Lteam/opay/core/settings/NoClearStorage;",
        "noClearStorage",
        "l",
        "S",
        "playAnimationEvent",
        "",
        "m",
        "H",
        "financeBalanceStatusEvent",
        "n",
        "Z",
        "getHideSaving",
        "setHideSaving",
        "hideSaving",
        "Lcom/opay/team/home/api/HomeApiService$b;",
        "o",
        "P",
        "()Lcom/opay/team/home/api/HomeApiService$b;",
        "homeApi",
        "M",
        "g0",
        "forceRefresh",
        "q",
        "N",
        "setForceRefreshEvent",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "forceRefreshEvent",
        "Lcom/google/gson/Gson;",
        "r",
        "O",
        "()Lcom/google/gson/Gson;",
        "gson",
        "s",
        "Y",
        "e0",
        "isAnimation",
        "t",
        "V",
        "h0",
        "(Ljava/lang/String;)V",
        "todayInterestAmount",
        "u",
        "investmentStatus",
        "isGuest",
        "Lteam/opay/core/api/Country;",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
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
.field public final b:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lcom/opay/team/newhome/bean/FinanceNewData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lcom/opay/team/newhome/bean/FinanceNewData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lteam/opay/odialog/net/AdDataItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lteam/opay/odialog/net/AdDataItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Landroidx/lifecycle/MutableLiveData;
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

.field public n:Z

.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Z

.field public q:Landroidx/lifecycle/MutableLiveData;
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

.field public final r:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Z

.field public t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:I


# direct methods
.method public constructor <init>(Lteam/opay/core/api/e;Landroid/app/Application;)V
    .locals 1
    .param p1    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sessionProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "app"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->b:Lteam/opay/core/api/e;

    .line 15
    .line 16
    invoke-interface {p1}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$User;->k()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->c:Ljava/lang/String;

    .line 29
    .line 30
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 50
    .line 51
    new-instance p1, Lh16;

    .line 52
    .line 53
    invoke-direct {p1}, Lh16;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->j:Lid8;

    .line 61
    .line 62
    new-instance p1, Li16;

    .line 63
    .line 64
    invoke-direct {p1}, Li16;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->k:Lid8;

    .line 72
    .line 73
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 74
    .line 75
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 79
    .line 80
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 81
    .line 82
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 86
    .line 87
    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->n:Z

    .line 89
    .line 90
    new-instance v0, Lj16;

    .line 91
    .line 92
    invoke-direct {v0, p2}, Lj16;-><init>(Landroid/app/Application;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    iput-object p2, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->o:Lid8;

    .line 100
    .line 101
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 102
    .line 103
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object p2, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    .line 107
    .line 108
    new-instance p2, Lk16;

    .line 109
    .line 110
    invoke-direct {p2}, Lk16;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-static {p2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    iput-object p2, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->r:Lid8;

    .line 118
    .line 119
    iput p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->u:I

    .line 120
    .line 121
    return-void
.end method

.method public static final synthetic A(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;Lteam/opay/odialog/net/AdDataItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->h:Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    return-void
.end method

.method private final O()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->r:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/gson/Gson;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final W()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final X(Landroid/app/Application;)Lcom/opay/team/home/api/HomeApiService$b;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    const-class v1, Lcom/opay/team/home/api/HomeApiService$b;

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/opay/team/home/api/HomeApiService$b;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final b0()Lteam/opay/core/settings/NoClearStorage;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static synthetic d0(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;Lag8;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    const-string p3, "newHomeFinanceDefaultLocalDataV3.json"

    .line 11
    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->c0(Lag8;ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final i0()Lteam/opay/core/settings/SettingsStorage;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static synthetic r(Landroid/app/Application;)Lcom/opay/team/home/api/HomeApiService$b;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->X(Landroid/app/Application;)Lcom/opay/team/home/api/HomeApiService$b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->W()Lcom/google/gson/Gson;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic t()Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->i0()Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic u()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    invoke-static {}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->b0()Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic v(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;Lcom/opay/team/newhome/bean/FinanceNewData;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->B(Lcom/opay/team/newhome/bean/FinanceNewData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic w(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;)Lteam/opay/odialog/net/AdDataItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->i:Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic x(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;)Lteam/opay/odialog/net/AdDataItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->h:Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic y(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;)Lcom/opay/team/home/api/HomeApiService$b;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->P()Lcom/opay/team/home/api/HomeApiService$b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic z(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;Lteam/opay/odialog/net/AdDataItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->i:Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final B(Lcom/opay/team/newhome/bean/FinanceNewData;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/FinanceNewData;->k()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    if-eqz v4, :cond_2

    .line 12
    .line 13
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const/4 v6, 0x0

    .line 18
    :goto_0
    if-ge v6, v5, :cond_2

    .line 19
    .line 20
    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    check-cast v7, Lcom/opay/team/newhome/bean/FinanceModuleList;

    .line 25
    .line 26
    if-eqz v7, :cond_0

    .line 27
    .line 28
    invoke-virtual {v7}, Lcom/opay/team/newhome/bean/FinanceModuleList;->c()Lcom/opay/team/newhome/bean/FinanceModuleData;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    if-eqz v7, :cond_0

    .line 33
    .line 34
    invoke-virtual {v7}, Lcom/opay/team/newhome/bean/FinanceModuleData;->b()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    move-object v7, v3

    .line 40
    :goto_1
    const-string v8, "Saving"

    .line 41
    .line 42
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    add-int/2addr v6, v0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v6, -0x1

    .line 52
    :goto_2
    const-string v4, ""

    .line 53
    .line 54
    if-le v6, v1, :cond_7

    .line 55
    .line 56
    if-eqz p1, :cond_7

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/FinanceNewData;->k()Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_7

    .line 63
    .line 64
    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/opay/team/newhome/bean/FinanceModuleList;

    .line 69
    .line 70
    if-eqz v1, :cond_7

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/opay/team/newhome/bean/FinanceModuleList;->b()Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p0, v1}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->F(Ljava/util/ArrayList;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    new-instance v5, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_4

    .line 94
    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Lcom/opay/team/newhome/bean/FinanceDetailData;

    .line 100
    .line 101
    new-instance v7, Lcom/opay/team/newhome/bean/FinanceMiddleShow;

    .line 102
    .line 103
    invoke-virtual {v6}, Lcom/opay/team/newhome/bean/FinanceDetailData;->title()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v6}, Lcom/opay/team/newhome/bean/FinanceDetailData;->adPicUrl()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-virtual {v6}, Lcom/opay/team/newhome/bean/FinanceDetailData;->getSuperscriptAd()Lcom/opay/team/newhome/bean/SuperscriptAd;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    if-eqz v6, :cond_3

    .line 116
    .line 117
    invoke-virtual {v6}, Lcom/opay/team/newhome/bean/SuperscriptAd;->getId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    goto :goto_4

    .line 122
    :cond_3
    move-object v6, v3

    .line 123
    :goto_4
    invoke-direct {v7, v8, v9, v6}, Lcom/opay/team/newhome/bean/FinanceMiddleShow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_7

    .line 135
    .line 136
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 137
    .line 138
    invoke-direct {p0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->O()Lcom/google/gson/Gson;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    goto :goto_5

    .line 151
    :catchall_0
    move-exception v1

    .line 152
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 153
    .line 154
    invoke-static {v1}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    :goto_5
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_5

    .line 167
    .line 168
    move-object v1, v3

    .line 169
    :cond_5
    check-cast v1, Ljava/lang/String;

    .line 170
    .line 171
    if-nez v1, :cond_6

    .line 172
    .line 173
    move-object v1, v4

    .line 174
    :cond_6
    sget-object v5, Lx7b;->a:Lx7b;

    .line 175
    .line 176
    const-string v6, "name"

    .line 177
    .line 178
    invoke-static {v6, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    new-array v6, v0, [Lkotlin/Pair;

    .line 183
    .line 184
    aput-object v1, v6, v2

    .line 185
    .line 186
    const-string v1, "finance_icon_show"

    .line 187
    .line 188
    invoke-virtual {v5, v1, v6}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 189
    .line 190
    .line 191
    :cond_7
    if-eqz p1, :cond_8

    .line 192
    .line 193
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/FinanceNewData;->j()Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    if-eqz v1, :cond_8

    .line 198
    .line 199
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    goto :goto_6

    .line 204
    :cond_8
    const/4 v1, 0x0

    .line 205
    :goto_6
    const/4 v5, 0x2

    .line 206
    if-le v1, v5, :cond_f

    .line 207
    .line 208
    const/4 v5, 0x3

    .line 209
    if-le v1, v5, :cond_9

    .line 210
    .line 211
    const/4 v1, 0x3

    .line 212
    :cond_9
    new-instance v5, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .line 216
    .line 217
    const/4 v6, 0x0

    .line 218
    :goto_7
    if-ge v6, v1, :cond_c

    .line 219
    .line 220
    new-instance v7, Lcom/opay/team/newhome/bean/FinanceAdShow;

    .line 221
    .line 222
    if-eqz p1, :cond_a

    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/FinanceNewData;->j()Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    if-eqz v8, :cond_a

    .line 229
    .line 230
    invoke-static {v8, v6}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    check-cast v8, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 235
    .line 236
    if-eqz v8, :cond_a

    .line 237
    .line 238
    invoke-virtual {v8}, Lcom/opay/team/newhome/bean/NewBusinessData;->getTitle()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    goto :goto_8

    .line 243
    :cond_a
    move-object v8, v3

    .line 244
    :goto_8
    if-eqz p1, :cond_b

    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/opay/team/newhome/bean/FinanceNewData;->j()Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object v9

    .line 250
    if-eqz v9, :cond_b

    .line 251
    .line 252
    invoke-static {v9, v6}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v9

    .line 256
    check-cast v9, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 257
    .line 258
    if-eqz v9, :cond_b

    .line 259
    .line 260
    invoke-virtual {v9}, Lcom/opay/team/newhome/bean/NewBusinessData;->getAction()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    goto :goto_9

    .line 265
    :cond_b
    move-object v9, v3

    .line 266
    :goto_9
    invoke-direct {v7, v8, v9}, Lcom/opay/team/newhome/bean/FinanceAdShow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    add-int/2addr v6, v0

    .line 273
    goto :goto_7

    .line 274
    :cond_c
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-nez p1, :cond_f

    .line 279
    .line 280
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 281
    .line 282
    invoke-direct {p0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->O()Lcom/google/gson/Gson;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-virtual {p1, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    goto :goto_a

    .line 295
    :catchall_1
    move-exception p1

    .line 296
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 297
    .line 298
    invoke-static {p1}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    :goto_a
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-eqz v1, :cond_d

    .line 311
    .line 312
    goto :goto_b

    .line 313
    :cond_d
    move-object v3, p1

    .line 314
    :goto_b
    check-cast v3, Ljava/lang/String;

    .line 315
    .line 316
    if-nez v3, :cond_e

    .line 317
    .line 318
    goto :goto_c

    .line 319
    :cond_e
    move-object v4, v3

    .line 320
    :goto_c
    sget-object p1, Lx7b;->a:Lx7b;

    .line 321
    .line 322
    const-string v1, "list"

    .line 323
    .line 324
    invoke-static {v1, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    new-array v0, v0, [Lkotlin/Pair;

    .line 329
    .line 330
    aput-object v1, v0, v2

    .line 331
    .line 332
    const-string v1, "finance_itemcard_show"

    .line 333
    .line 334
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 335
    .line 336
    .line 337
    :cond_f
    return-void
.end method

.method public final C(Landroid/content/Context;)Ljava/util/List;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/finance/InvestmentItem;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->T()Lcom/opay/team/newhome/bean/FinanceModuleList;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/FinanceModuleList;->b()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v4, v3

    .line 21
    :goto_0
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    :cond_1
    move-object/from16 v4, p0

    .line 30
    .line 31
    goto/16 :goto_7

    .line 32
    .line 33
    :cond_2
    new-instance v4, Lcom/opay/team/newhome/finance/InvestmentItem;

    .line 34
    .line 35
    sget v5, Lteam/opay/pay/R$string;->omain_available_balance:I

    .line 36
    .line 37
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    const/4 v9, 0x2

    .line 42
    const/4 v10, 0x0

    .line 43
    const/4 v6, 0x1

    .line 44
    const/4 v7, 0x0

    .line 45
    move-object v5, v4

    .line 46
    invoke-direct/range {v5 .. v10}, Lcom/opay/team/newhome/finance/InvestmentItem;-><init>(ILcom/opay/team/newhome/bean/FinanceDetailData;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/FinanceModuleList;->b()Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    const-string v6, "Wallet Balance"

    .line 65
    .line 66
    if-eqz v5, :cond_4

    .line 67
    .line 68
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    move-object v7, v5

    .line 73
    check-cast v7, Lcom/opay/team/newhome/bean/FinanceDetailData;

    .line 74
    .line 75
    invoke-virtual {v7}, Lcom/opay/team/newhome/bean/FinanceDetailData;->code()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    move-object v5, v3

    .line 87
    :goto_1
    check-cast v5, Lcom/opay/team/newhome/bean/FinanceDetailData;

    .line 88
    .line 89
    if-nez v5, :cond_6

    .line 90
    .line 91
    sget v4, Lteam/opay/pay/R$string;->omain_total_amount_paylabel:I

    .line 92
    .line 93
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    move-object/from16 v4, p0

    .line 98
    .line 99
    iget-object v5, v4, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 100
    .line 101
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    check-cast v5, Lteam/opay/core/android/arch/Resource;

    .line 106
    .line 107
    if-eqz v5, :cond_5

    .line 108
    .line 109
    invoke-virtual {v5}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Lcom/opay/team/newhome/bean/FinanceNewData;

    .line 114
    .line 115
    if-eqz v5, :cond_5

    .line 116
    .line 117
    invoke-virtual {v5}, Lcom/opay/team/newhome/bean/FinanceNewData;->o()Ljava/lang/Double;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    move-object/from16 v19, v5

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    move-object/from16 v19, v3

    .line 125
    .line 126
    :goto_2
    new-instance v5, Lcom/opay/team/newhome/bean/FinanceDetailData;

    .line 127
    .line 128
    move-object v7, v5

    .line 129
    const v34, 0x3fff3fb

    .line 130
    .line 131
    .line 132
    const/16 v35, 0x0

    .line 133
    .line 134
    const/4 v8, 0x0

    .line 135
    const/4 v9, 0x0

    .line 136
    const/4 v11, 0x0

    .line 137
    const/4 v12, 0x0

    .line 138
    const/4 v13, 0x0

    .line 139
    const/4 v14, 0x0

    .line 140
    const/4 v15, 0x0

    .line 141
    const/16 v16, 0x0

    .line 142
    .line 143
    const/16 v17, 0x0

    .line 144
    .line 145
    const-string v18, "otravel://balance_history/entrance"

    .line 146
    .line 147
    const/16 v20, 0x0

    .line 148
    .line 149
    const/16 v21, 0x0

    .line 150
    .line 151
    const/16 v22, 0x0

    .line 152
    .line 153
    const/16 v23, 0x0

    .line 154
    .line 155
    const/16 v24, 0x0

    .line 156
    .line 157
    const/16 v25, 0x0

    .line 158
    .line 159
    const/16 v26, 0x0

    .line 160
    .line 161
    const/16 v27, 0x0

    .line 162
    .line 163
    const/16 v28, 0x0

    .line 164
    .line 165
    const/16 v29, 0x0

    .line 166
    .line 167
    const/16 v30, 0x0

    .line 168
    .line 169
    const/16 v31, 0x0

    .line 170
    .line 171
    const/16 v32, 0x0

    .line 172
    .line 173
    const/16 v33, 0x0

    .line 174
    .line 175
    invoke-direct/range {v7 .. v35}, Lcom/opay/team/newhome/bean/FinanceDetailData;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/opay/team/newhome/bean/SuperscriptAd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 176
    .line 177
    .line 178
    :goto_3
    move-object/from16 v38, v5

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_6
    move-object/from16 v4, p0

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :goto_4
    new-instance v5, Lcom/opay/team/newhome/finance/InvestmentItem;

    .line 185
    .line 186
    const/16 v40, 0x4

    .line 187
    .line 188
    const/16 v41, 0x0

    .line 189
    .line 190
    const/16 v37, 0x3

    .line 191
    .line 192
    const/16 v39, 0x0

    .line 193
    .line 194
    move-object/from16 v36, v5

    .line 195
    .line 196
    invoke-direct/range {v36 .. v41}, Lcom/opay/team/newhome/finance/InvestmentItem;-><init>(ILcom/opay/team/newhome/bean/FinanceDetailData;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/FinanceModuleList;->b()Ljava/util/ArrayList;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    const-string v8, "OWealth"

    .line 215
    .line 216
    if-eqz v7, :cond_8

    .line 217
    .line 218
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    move-object v9, v7

    .line 223
    check-cast v9, Lcom/opay/team/newhome/bean/FinanceDetailData;

    .line 224
    .line 225
    invoke-virtual {v9}, Lcom/opay/team/newhome/bean/FinanceDetailData;->code()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v9

    .line 233
    if-eqz v9, :cond_7

    .line 234
    .line 235
    move-object v3, v7

    .line 236
    :cond_8
    move-object v11, v3

    .line 237
    check-cast v11, Lcom/opay/team/newhome/bean/FinanceDetailData;

    .line 238
    .line 239
    if-eqz v11, :cond_9

    .line 240
    .line 241
    new-instance v3, Lcom/opay/team/newhome/finance/InvestmentItem;

    .line 242
    .line 243
    const/4 v13, 0x4

    .line 244
    const/4 v14, 0x0

    .line 245
    const/4 v10, 0x3

    .line 246
    const/4 v12, 0x0

    .line 247
    move-object v9, v3

    .line 248
    invoke-direct/range {v9 .. v14}, Lcom/opay/team/newhome/finance/InvestmentItem;-><init>(ILcom/opay/team/newhome/bean/FinanceDetailData;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 249
    .line 250
    .line 251
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    :cond_9
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/FinanceModuleList;->b()Ljava/util/ArrayList;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    new-instance v3, Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    :cond_a
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-eqz v5, :cond_b

    .line 272
    .line 273
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    move-object v7, v5

    .line 278
    check-cast v7, Lcom/opay/team/newhome/bean/FinanceDetailData;

    .line 279
    .line 280
    invoke-virtual {v7}, Lcom/opay/team/newhome/bean/FinanceDetailData;->getInvested()Ljava/lang/Boolean;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 285
    .line 286
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    if-eqz v9, :cond_a

    .line 291
    .line 292
    invoke-virtual {v7}, Lcom/opay/team/newhome/bean/FinanceDetailData;->code()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v9

    .line 296
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v9

    .line 300
    if-nez v9, :cond_a

    .line 301
    .line 302
    invoke-virtual {v7}, Lcom/opay/team/newhome/bean/FinanceDetailData;->code()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v9

    .line 310
    if-nez v9, :cond_a

    .line 311
    .line 312
    invoke-virtual {v7}, Lcom/opay/team/newhome/bean/FinanceDetailData;->code()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    const-string v9, "Savings Report"

    .line 317
    .line 318
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v7

    .line 322
    if-nez v7, :cond_a

    .line 323
    .line 324
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    goto :goto_5

    .line 328
    :cond_b
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-nez v2, :cond_c

    .line 333
    .line 334
    new-instance v2, Lcom/opay/team/newhome/finance/InvestmentItem;

    .line 335
    .line 336
    const/4 v9, 0x6

    .line 337
    const/4 v10, 0x0

    .line 338
    const/4 v6, 0x2

    .line 339
    const/4 v7, 0x0

    .line 340
    const/4 v8, 0x0

    .line 341
    move-object v5, v2

    .line 342
    invoke-direct/range {v5 .. v10}, Lcom/opay/team/newhome/finance/InvestmentItem;-><init>(ILcom/opay/team/newhome/bean/FinanceDetailData;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 343
    .line 344
    .line 345
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    new-instance v2, Lcom/opay/team/newhome/finance/InvestmentItem;

    .line 349
    .line 350
    sget v5, Lteam/opay/pay/R$string;->omain_savings:I

    .line 351
    .line 352
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v14

    .line 356
    const/4 v15, 0x2

    .line 357
    const/16 v16, 0x0

    .line 358
    .line 359
    const/4 v12, 0x1

    .line 360
    const/4 v13, 0x0

    .line 361
    move-object v11, v2

    .line 362
    invoke-direct/range {v11 .. v16}, Lcom/opay/team/newhome/finance/InvestmentItem;-><init>(ILcom/opay/team/newhome/bean/FinanceDetailData;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 363
    .line 364
    .line 365
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-eqz v2, :cond_c

    .line 377
    .line 378
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    move-object v7, v2

    .line 383
    check-cast v7, Lcom/opay/team/newhome/bean/FinanceDetailData;

    .line 384
    .line 385
    new-instance v2, Lcom/opay/team/newhome/finance/InvestmentItem;

    .line 386
    .line 387
    const/4 v9, 0x4

    .line 388
    const/4 v10, 0x0

    .line 389
    const/4 v6, 0x3

    .line 390
    const/4 v8, 0x0

    .line 391
    move-object v5, v2

    .line 392
    invoke-direct/range {v5 .. v10}, Lcom/opay/team/newhome/finance/InvestmentItem;-><init>(ILcom/opay/team/newhome/bean/FinanceDetailData;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 393
    .line 394
    .line 395
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    goto :goto_6

    .line 399
    :cond_c
    new-instance v0, Lcom/opay/team/newhome/finance/InvestmentItem;

    .line 400
    .line 401
    const/4 v15, 0x6

    .line 402
    const/16 v16, 0x0

    .line 403
    .line 404
    const/4 v12, 0x4

    .line 405
    const/4 v13, 0x0

    .line 406
    const/4 v14, 0x0

    .line 407
    move-object v11, v0

    .line 408
    invoke-direct/range {v11 .. v16}, Lcom/opay/team/newhome/finance/InvestmentItem;-><init>(ILcom/opay/team/newhome/bean/FinanceDetailData;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 409
    .line 410
    .line 411
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    :goto_7
    return-object v1
.end method

.method public final D()Z
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x6

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->R()Lteam/opay/core/settings/NoClearStorage;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lteam/opay/core/settings/NoClearStorage;->R()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eq v1, v0, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->R()Lteam/opay/core/settings/NoClearStorage;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, v0}, Lteam/opay/core/settings/NoClearStorage;->w1(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return v1
.end method

.method public final E(Z)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->s:Z

    .line 3
    .line 4
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    new-instance v4, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$delayPlayAnimation$1;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {v4, p1, p0, v0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$delayPlayAnimation$1;-><init>(ZLcom/opay/team/newhome/viewmodel/FinanceViewModel;Ljr2;)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x3

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final F(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/opay/team/newhome/bean/FinanceDetailData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/bean/FinanceDetailData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v2, v1

    .line 23
    check-cast v2, Lcom/opay/team/newhome/bean/FinanceDetailData;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->code()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "Wallet Balance"

    .line 30
    .line 31
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/FinanceDetailData;->code()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "Savings Report"

    .line 42
    .line 43
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_2
    return-object v0
.end method

.method public final G(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/finance/InvestmentItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    move-object v2, v1

    .line 26
    check-cast v2, Lcom/opay/team/newhome/finance/InvestmentItem;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/opay/team/newhome/finance/InvestmentItem;->getItemType()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x3

    .line 33
    if-ne v2, v3, :cond_0

    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x0

    .line 49
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_5

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    add-int/lit8 v4, v2, 0x1

    .line 60
    .line 61
    if-gez v2, :cond_2

    .line 62
    .line 63
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 64
    .line 65
    .line 66
    :cond_2
    check-cast v3, Lcom/opay/team/newhome/finance/InvestmentItem;

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/opay/team/newhome/finance/InvestmentItem;->a()Lcom/opay/team/newhome/bean/FinanceDetailData;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/opay/team/newhome/bean/FinanceDetailData;->title()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const/4 v3, 0x0

    .line 80
    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    add-int/lit8 v3, v3, -0x1

    .line 88
    .line 89
    if-ge v2, v3, :cond_4

    .line 90
    .line 91
    const-string v2, ","

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    :cond_4
    move v2, v4

    .line 97
    goto :goto_1

    .line 98
    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string v0, "toString(...)"

    .line 103
    .line 104
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-object p1
.end method

.method public final H()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Lcom/opay/team/newhome/bean/FinanceNewData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->d:Lcom/opay/team/newhome/bean/FinanceNewData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lcom/opay/team/newhome/bean/FinanceNewData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public final N()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()Lcom/opay/team/home/api/HomeApiService$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->o:Lid8;

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

.method public final Q(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/finance/InvestmentItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->u:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->C(Landroid/content/Context;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v6, Lcom/opay/team/newhome/finance/InvestmentItem;

    .line 30
    .line 31
    const/4 v4, 0x6

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    move-object v0, v6

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/opay/team/newhome/finance/InvestmentItem;-><init>(ILcom/opay/team/newhome/bean/FinanceDetailData;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :goto_0
    return-object p1
.end method

.method public final R()Lteam/opay/core/settings/NoClearStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/NoClearStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public final S()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T()Lcom/opay/team/newhome/bean/FinanceModuleList;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/android/arch/Resource;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/opay/team/newhome/bean/FinanceNewData;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    const/4 v2, -0x1

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/FinanceNewData;->k()Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_3

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/4 v5, 0x0

    .line 34
    :goto_1
    if-ge v5, v4, :cond_3

    .line 35
    .line 36
    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Lcom/opay/team/newhome/bean/FinanceModuleList;

    .line 41
    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    invoke-virtual {v6}, Lcom/opay/team/newhome/bean/FinanceModuleList;->c()Lcom/opay/team/newhome/bean/FinanceModuleData;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    if-eqz v6, :cond_1

    .line 49
    .line 50
    invoke-virtual {v6}, Lcom/opay/team/newhome/bean/FinanceModuleData;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    move-object v6, v1

    .line 56
    :goto_2
    const-string v7, "Saving"

    .line 57
    .line 58
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_2

    .line 63
    .line 64
    move v2, v5

    .line 65
    goto :goto_3

    .line 66
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/opay/team/newhome/bean/FinanceNewData;->k()Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    move-object v1, v0

    .line 82
    check-cast v1, Lcom/opay/team/newhome/bean/FinanceModuleList;

    .line 83
    .line 84
    :cond_4
    return-object v1
.end method

.method public final U()Lteam/opay/core/settings/SettingsStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/SettingsStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public final V()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Z()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->U()Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->H()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final a0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->U()Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->H()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public final c0(Lag8;ZLjava/lang/String;)V
    .locals 9
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
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
    const-string v0, "defaultFile"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    move-object v3, v0

    .line 23
    move-object v4, p0

    .line 24
    move-object v5, p3

    .line 25
    move-object v6, p1

    .line 26
    move v7, p2

    .line 27
    invoke-direct/range {v3 .. v8}, Lcom/opay/team/newhome/viewmodel/FinanceViewModel$requestNewFinanceData$1;-><init>(Lcom/opay/team/newhome/viewmodel/FinanceViewModel;Ljava/lang/String;Lag8;ZLjr2;)V

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    move-object v4, v0

    .line 34
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final e0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->s:Z

    .line 2
    .line 3
    return-void
.end method

.method public final f0(Lcom/opay/team/newhome/bean/FinanceNewData;)V
    .locals 0
    .param p1    # Lcom/opay/team/newhome/bean/FinanceNewData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->d:Lcom/opay/team/newhome/bean/FinanceNewData;

    .line 2
    .line 3
    return-void
.end method

.method public final g0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public final h0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final j0(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x1

    .line 6
    :goto_0
    iput p1, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->u:I

    .line 7
    .line 8
    return-void
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->b:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->b:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/FinanceViewModel;->b:Lteam/opay/core/api/e;

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
