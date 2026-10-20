.class public final Lteam/opay/pay/android/views/AmountInputBusnissUtils;
.super Ljava/lang/Object;
.source "AmountInputBusnissUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;,
        Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;,
        Lteam/opay/pay/android/views/AmountInputBusnissUtils$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0003./0B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J7\u0010\u001d\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00112\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ)\u0010\"\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u00192\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008\"\u0010#J\u0015\u0010%\u001a\u00020\n2\u0006\u0010$\u001a\u00020\u0014\u00a2\u0006\u0004\u0008%\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u001c\u0010-\u001a\u0008\u0018\u00010*R\u00020\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,\u00a8\u00061"
    }
    d2 = {
        "Lteam/opay/pay/android/views/AmountInputBusnissUtils;",
        "",
        "Lteam/opay/pay/android/views/BaseAccountEditText;",
        "inputText",
        "<init>",
        "(Lteam/opay/pay/android/views/BaseAccountEditText;)V",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "Lteam/opay/pay/android/views/e;",
        "listener",
        "",
        "e",
        "(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/android/views/e;)V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "d",
        "(Landroidx/fragment/app/Fragment;Lteam/opay/pay/android/views/e;)V",
        "Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;",
        "i",
        "()Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;",
        "",
        "isSending",
        "f",
        "(Z)V",
        "status",
        "",
        "name",
        "errorMessage",
        "errorCode",
        "k",
        "(Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "accountNumber",
        "accountName",
        "role",
        "h",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "show",
        "j",
        "a",
        "Lteam/opay/pay/android/views/BaseAccountEditText;",
        "b",
        "Lteam/opay/pay/android/views/e;",
        "Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;",
        "c",
        "Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;",
        "bankAccountInput",
        "BankAccountInput",
        "Companion",
        "AccountStatus",
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
.field public static final d:Lteam/opay/pay/android/views/AmountInputBusnissUtils$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lteam/opay/pay/android/views/BaseAccountEditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lteam/opay/pay/android/views/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/android/views/AmountInputBusnissUtils$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/android/views/AmountInputBusnissUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->d:Lteam/opay/pay/android/views/AmountInputBusnissUtils$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/android/views/BaseAccountEditText;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->a:Lteam/opay/pay/android/views/BaseAccountEditText;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/android/views/BaseAccountEditText;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;-><init>(Lteam/opay/pay/android/views/BaseAccountEditText;)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->g(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lteam/opay/pay/android/views/AmountInputBusnissUtils;)Lteam/opay/pay/android/views/BaseAccountEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->a:Lteam/opay/pay/android/views/BaseAccountEditText;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lteam/opay/pay/android/views/AmountInputBusnissUtils;)Lteam/opay/pay/android/views/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->b:Lteam/opay/pay/android/views/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final g(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;)Lkotlin/Unit;
    .locals 8

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->c:Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/16 v6, 0xc

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v2, p1

    .line 16
    move-object v3, p2

    .line 17
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;->r(Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method public static synthetic l(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move-object p3, v0

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move-object p4, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->k(Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final d(Landroidx/fragment/app/Fragment;Lteam/opay/pay/android/views/e;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/android/views/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->b:Lteam/opay/pay/android/views/e;

    .line 12
    .line 13
    new-instance p2, Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

    .line 14
    .line 15
    invoke-direct {p2, p0, p1}, Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;-><init>(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Landroidx/fragment/app/Fragment;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->c:Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

    .line 19
    .line 20
    return-void
.end method

.method public final e(Landroidx/fragment/app/FragmentActivity;Lteam/opay/pay/android/views/e;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/android/views/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->b:Lteam/opay/pay/android/views/e;

    .line 12
    .line 13
    new-instance p2, Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

    .line 14
    .line 15
    invoke-direct {p2, p0, p1}, Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;-><init>(Lteam/opay/pay/android/views/AmountInputBusnissUtils;Landroidx/fragment/app/FragmentActivity;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->c:Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

    .line 19
    .line 20
    return-void
.end method

.method public final f(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->b:Lteam/opay/pay/android/views/e;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lteam/opay/pay/android/views/e;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->c:Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;->f(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->c:Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    sget-object v2, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCHING:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 24
    .line 25
    const/16 v6, 0xe

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;->r(Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->b:Lteam/opay/pay/android/views/e;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->a:Lteam/opay/pay/android/views/BaseAccountEditText;

    .line 40
    .line 41
    invoke-virtual {v0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getFormatText()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lpr;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lpr;-><init>(Lteam/opay/pay/android/views/AmountInputBusnissUtils;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v0, v1}, Lteam/opay/pay/android/views/e;->d(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "accountNumber"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "accountName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->c:Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v1, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_NONE:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;->p(Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v2, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->c:Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    sget-object v3, Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;->STATUS_SEARCH_SUCCESS:Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 25
    .line 26
    const/16 v7, 0xc

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v4, p2

    .line 32
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;->r(Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->c:Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;->i()V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->a:Lteam/opay/pay/android/views/BaseAccountEditText;

    .line 43
    .line 44
    invoke-virtual {v0}, Lteam/opay/pay/android/views/BaseAccountEditText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->a:Lteam/opay/pay/android/views/BaseAccountEditText;

    .line 54
    .line 55
    invoke-virtual {p1}, Lteam/opay/pay/android/views/BaseAccountEditText;->getTagMerchant()Landroid/widget/TextView;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    const-string v0, "agent"

    .line 62
    .line 63
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    if-eqz p3, :cond_4

    .line 68
    .line 69
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    sget-object p3, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 73
    .line 74
    invoke-virtual {p3}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-virtual {p3, v0}, Lteam/opay/core/account/AccountInfoManager;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->b:Lteam/opay/pay/android/views/e;

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    const/16 v5, 0xc

    .line 94
    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v1, 0x0

    .line 97
    const/4 v3, 0x0

    .line 98
    const/4 v4, 0x0

    .line 99
    move-object v2, p2

    .line 100
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/android/views/e$a;->h(Lteam/opay/pay/android/views/e;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_6
    return-void
.end method

.method public final i()Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->c:Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;->j()Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final j(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->a:Lteam/opay/pay/android/views/BaseAccountEditText;

    .line 4
    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/android/views/BaseAccountEditText;->getTagMerchant()Landroid/widget/TextView;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->a:Lteam/opay/pay/android/views/BaseAccountEditText;

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/android/views/BaseAccountEditText;->getTagMerchant()Landroid/widget/TextView;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 23
    .line 24
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "agent"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lteam/opay/core/account/AccountInfoManager;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->a:Lteam/opay/pay/android/views/BaseAccountEditText;

    .line 39
    .line 40
    invoke-virtual {p1}, Lteam/opay/pay/android/views/BaseAccountEditText;->getTagMerchant()Landroid/widget/TextView;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method

.method public final k(Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputBusnissUtils;->c:Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3, p4}, Lteam/opay/pay/android/views/AmountInputBusnissUtils$BankAccountInput;->q(Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
