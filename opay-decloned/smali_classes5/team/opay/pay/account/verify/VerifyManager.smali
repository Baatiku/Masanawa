.class public final Lteam/opay/pay/account/verify/VerifyManager;
.super Ljava/lang/Object;
.source "VerifyManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/verify/VerifyManager$Companion;,
        Lteam/opay/pay/account/verify/VerifyManager$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 m2\u00020\u0001:\u0001nB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0015\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJA\u0010$\u001a\u00020\u00082\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0008\u0002\u0010!\u001a\u00020\u000f2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00080\"\u00a2\u0006\u0004\u0008$\u0010%J\'\u0010)\u001a\u00020\u00082\u0006\u0010&\u001a\u00020\u00172\u0006\u0010\'\u001a\u00020\u000f2\u0008\u0008\u0002\u0010(\u001a\u00020\u0017\u00a2\u0006\u0004\u0008)\u0010*J\u001d\u0010-\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u00152\u0006\u0010,\u001a\u00020\u000f\u00a2\u0006\u0004\u0008-\u0010.J\r\u0010/\u001a\u00020\u0008\u00a2\u0006\u0004\u0008/\u00100J%\u00104\u001a\u00020\u00082\u0006\u00101\u001a\u00020\u00172\u0006\u00102\u001a\u00020\u00172\u0006\u00103\u001a\u00020\u0017\u00a2\u0006\u0004\u00084\u00105J\u001b\u00108\u001a\u0008\u0012\u0004\u0012\u000207062\u0006\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0004\u00088\u00109J\u0015\u0010:\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008:\u0010;J%\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u0015062\u0006\u0010\u0012\u001a\u00020\u000f2\u0008\u0008\u0002\u0010<\u001a\u00020\u000f\u00a2\u0006\u0004\u0008=\u0010>J#\u0010@\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0017\u0018\u00010?2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008@\u0010AJ\u000f\u0010B\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008B\u00100J1\u0010E\u001a\u00020\u00082\u0008\u0010C\u001a\u0004\u0018\u00010\u001f2\u0016\u0008\u0002\u0010D\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0008\u0018\u00010\"H\u0002\u00a2\u0006\u0004\u0008E\u0010FJ\u000f\u0010G\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008G\u00100J\u000f\u0010H\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008H\u00100J\u000f\u0010I\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008I\u00100J\u000f\u0010J\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008J\u00100J\u0017\u0010K\u001a\u00020\u00082\u0006\u0010,\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008K\u0010LJ\u000f\u0010M\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008M\u00100J\u000f\u0010N\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008N\u00100J\'\u0010O\u001a\u00020\u00082\u0006\u00101\u001a\u00020\u00172\u0006\u00102\u001a\u00020\u00172\u0006\u00103\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008O\u00105J\u000f\u0010P\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008P\u00100J\u0017\u0010Q\u001a\u00020\u00082\u0006\u00103\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008Q\u0010RJ\u0017\u0010S\u001a\u00020\u00082\u0006\u00103\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008S\u0010RJ\u0017\u0010T\u001a\u00020\u00082\u0006\u00103\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008T\u0010RJ\u0017\u0010U\u001a\u00020\u00082\u0006\u00103\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008U\u0010RJ)\u0010W\u001a\n\u0012\u0004\u0012\u00020V\u0018\u0001062\u0006\u0010\u0012\u001a\u00020\u000f2\u0008\u0008\u0002\u0010<\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008W\u0010>J\u001d\u0010Y\u001a\u00020\u000f2\u000c\u0010X\u001a\u0008\u0012\u0004\u0012\u00020V06H\u0002\u00a2\u0006\u0004\u0008Y\u0010ZJ\'\u0010]\u001a\u0008\u0012\u0004\u0012\u0002070\\2\u0010\u0010[\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u000106H\u0002\u00a2\u0006\u0004\u0008]\u0010^R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008_\u0010`R\u0014\u0010c\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0018\u0010h\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0016\u0010l\u001a\u00020i8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010k\u00a8\u0006o"
    }
    d2 = {
        "Lteam/opay/pay/account/verify/VerifyManager;",
        "",
        "Lteam/opay/pay/account/verify/VerifyViewModel;",
        "viewModel",
        "<init>",
        "(Lteam/opay/pay/account/verify/VerifyViewModel;)V",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "activity",
        "",
        "P",
        "(Landroidx/appcompat/app/AppCompatActivity;)V",
        "Lteam/opay/pay/account/verify/VerifyPoolResponse;",
        "data",
        "U",
        "(Lteam/opay/pay/account/verify/VerifyPoolResponse;)V",
        "",
        "O",
        "()Z",
        "isDegrade",
        "Q",
        "(Z)Z",
        "Lteam/opay/pay/account/verify/ValidationType;",
        "validationType",
        "",
        "L",
        "(Lteam/opay/pay/account/verify/ValidationType;)Ljava/lang/String;",
        "Lteam/opay/pay/account/verify/VerifyExitEvent;",
        "event",
        "X",
        "(Lteam/opay/pay/account/verify/VerifyExitEvent;)V",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/pay/account/verify/ValidationResponse;",
        "resource",
        "close",
        "Lkotlin/Function1;",
        "fail",
        "Y",
        "(Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/account/verify/ValidationType;ZLkotlin/jvm/functions/Function1;)V",
        "status",
        "isSuccess",
        "errorMsg",
        "m",
        "(Ljava/lang/String;ZLjava/lang/String;)V",
        "type",
        "isOther",
        "S",
        "(Lteam/opay/pay/account/verify/ValidationType;Z)V",
        "W",
        "()V",
        "modifyType",
        "apiCode",
        "message",
        "T",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "",
        "Lteam/opay/pay/account/verify/VerifyMethods;",
        "G",
        "(Z)Ljava/util/List;",
        "q",
        "(Lteam/opay/pay/account/verify/ValidationType;)Z",
        "needRemove",
        "J",
        "(ZZ)Ljava/util/List;",
        "",
        "M",
        "(Lteam/opay/pay/account/verify/ValidationType;)Ljava/util/Map;",
        "V",
        "validationResponse",
        "callback",
        "h0",
        "(Lteam/opay/pay/account/verify/ValidationResponse;Lkotlin/jvm/functions/Function1;)V",
        "c0",
        "d0",
        "e0",
        "i0",
        "f0",
        "(Z)V",
        "a0",
        "o",
        "r",
        "E",
        "B",
        "(Ljava/lang/String;)V",
        "s",
        "y",
        "v",
        "Lteam/opay/pay/account/verify/VerifyStepItem;",
        "H",
        "list",
        "b0",
        "(Ljava/util/List;)Z",
        "chooseList",
        "",
        "N",
        "(Ljava/util/List;)Ljava/util/List;",
        "a",
        "Lteam/opay/pay/account/verify/VerifyViewModel;",
        "b",
        "Z",
        "isV3",
        "c",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "d",
        "Lteam/opay/pay/account/verify/VerifyStepItem;",
        "currentV3Step",
        "",
        "e",
        "I",
        "poolSize",
        "f",
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
.field public static final f:Lteam/opay/pay/account/verify/VerifyManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lteam/opay/pay/account/verify/VerifyViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Z

.field public c:Landroidx/appcompat/app/AppCompatActivity;

.field public d:Lteam/opay/pay/account/verify/VerifyStepItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/account/verify/VerifyManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/account/verify/VerifyManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/account/verify/VerifyManager;->f:Lteam/opay/pay/account/verify/VerifyManager$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/account/verify/VerifyViewModel;)V
    .locals 1
    .param p1    # Lteam/opay/pay/account/verify/VerifyViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 10
    .line 11
    sget-object p1, Lteam/opay/pay/account/verify/V3VerifyConfig;->Companion:Lteam/opay/pay/account/verify/V3VerifyConfig$Companion;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/V3VerifyConfig$Companion;->a()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput-boolean p1, p0, Lteam/opay/pay/account/verify/VerifyManager;->b:Z

    .line 18
    .line 19
    return-void
.end method

.method public static final A(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "activity"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-static {v0}, Lsy2;->a(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->X(Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final C(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->X(Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "activity"

    .line 9
    .line 10
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final D(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->X(Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "activity"

    .line 9
    .line 10
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final F(Lteam/opay/pay/account/verify/VerifyManager;)Lkotlin/Unit;
    .locals 10

    .line 1
    new-instance v9, Lteam/opay/pay/account/verify/VerifyExitEvent;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    :cond_0
    move-object v2, v0

    .line 14
    sget v0, Lteam/opay/pay/R$string;->set_payment_pin_tip:I

    .line 15
    .line 16
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const/16 v7, 0x20

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v1, 0x1

    .line 30
    const-string v4, "C10100"

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    move-object v0, v9

    .line 34
    invoke-direct/range {v0 .. v8}, Lteam/opay/pay/account/verify/VerifyExitEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 38
    .line 39
    const/4 v4, 0x4

    .line 40
    const/4 v5, 0x0

    .line 41
    const-string v1, "verify_pool_exit_key"

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    move-object v2, v9

    .line 45
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 49
    .line 50
    if-nez p0, :cond_1

    .line 51
    .line 52
    const-string p0, "activity"

    .line 53
    .line 54
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 59
    .line 60
    .line 61
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p0
.end method

.method public static synthetic I(Lteam/opay/pay/account/verify/VerifyManager;ZZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyManager;->H(ZZ)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic K(Lteam/opay/pay/account/verify/VerifyManager;ZZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyManager;->J(ZZ)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/account/verify/VerifyManager;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->Q(Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final Z(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static synthetic a(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->z(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->x(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->D(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/pay/account/verify/VerifyManager;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->t(Lteam/opay/pay/account/verify/VerifyManager;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->C(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/pay/account/verify/VerifyManager;ZLteam/opay/pay/account/verify/VerifyMethods;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/account/verify/VerifyManager;->g0(Lteam/opay/pay/account/verify/VerifyManager;ZLteam/opay/pay/account/verify/VerifyMethods;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/pay/account/verify/VerifyManager;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->p(Lteam/opay/pay/account/verify/VerifyManager;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final g0(Lteam/opay/pay/account/verify/VerifyManager;ZLteam/opay/pay/account/verify/VerifyMethods;I)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "methods"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->b:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getVerifyStepList()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    move-object v0, p1

    .line 33
    check-cast v0, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 37
    .line 38
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getVerifyStepList()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    move-object v0, p1

    .line 55
    check-cast v0, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 56
    .line 57
    :cond_1
    :goto_0
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 58
    .line 59
    :cond_2
    invoke-virtual {p2}, Lteam/opay/pay/account/verify/VerifyMethods;->e()Lteam/opay/pay/account/verify/ValidationType;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1, v1}, Lteam/opay/pay/account/verify/VerifyManager;->S(Lteam/opay/pay/account/verify/ValidationType;Z)V

    .line 64
    .line 65
    .line 66
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p0
.end method

.method public static synthetic h(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->Z(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lteam/opay/pay/account/verify/VerifyManager;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->u(Lteam/opay/pay/account/verify/VerifyManager;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lteam/opay/pay/account/verify/VerifyManager;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/verify/VerifyManager;->F(Lteam/opay/pay/account/verify/VerifyManager;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->A(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->w(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n(Lteam/opay/pay/account/verify/VerifyManager;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const-string p3, ""

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/account/verify/VerifyManager;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final p(Lteam/opay/pay/account/verify/VerifyManager;Ljava/lang/String;)Lkotlin/Unit;
    .locals 13

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 7
    .line 8
    new-instance v3, Lteam/opay/pay/home/event/OPayPageRefreshEvent;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {v3, v0}, Lteam/opay/pay/home/event/OPayPageRefreshEvent;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x4

    .line 15
    const/4 v6, 0x0

    .line 16
    const-string v2, "opay_page_refresh_event"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v11, 0x4

    .line 23
    const/4 v12, 0x0

    .line 24
    const/4 v9, 0x1

    .line 25
    const/4 v10, 0x0

    .line 26
    move-object v7, p0

    .line 27
    move-object v8, p1

    .line 28
    invoke-static/range {v7 .. v12}, Lteam/opay/pay/account/verify/VerifyManager;->n(Lteam/opay/pay/account/verify/VerifyManager;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method public static final t(Lteam/opay/pay/account/verify/VerifyManager;Ljava/lang/String;)Lkotlin/Unit;
    .locals 10

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "activity"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-static {v0}, Lkmf;->B(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lteam/opay/pay/account/verify/VerifyExitEvent;

    .line 15
    .line 16
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    :cond_1
    move-object v3, v1

    .line 27
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 28
    .line 29
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const/16 v8, 0x20

    .line 34
    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v2, 0x1

    .line 37
    const-string v5, "C10100"

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    move-object v1, v0

    .line 41
    move-object v4, p1

    .line 42
    invoke-direct/range {v1 .. v9}, Lteam/opay/pay/account/verify/VerifyExitEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lteam/opay/pay/account/verify/VerifyManager;->X(Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 46
    .line 47
    .line 48
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method public static final u(Lteam/opay/pay/account/verify/VerifyManager;Ljava/lang/String;)Lkotlin/Unit;
    .locals 10

    .line 1
    new-instance v9, Lteam/opay/pay/account/verify/VerifyExitEvent;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    :cond_0
    move-object v2, v0

    .line 14
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const/16 v7, 0x20

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v1, 0x1

    .line 24
    const-string v4, "C10100"

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    move-object v0, v9

    .line 28
    move-object v3, p1

    .line 29
    invoke-direct/range {v0 .. v8}, Lteam/opay/pay/account/verify/VerifyExitEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v9}, Lteam/opay/pay/account/verify/VerifyManager;->X(Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method public static final w(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->X(Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final x(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "activity"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    new-instance v3, Landroid/content/Intent;

    .line 13
    .line 14
    iget-object v4, p0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 15
    .line 16
    if-nez v4, :cond_1

    .line 17
    .line 18
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v1, v4

    .line 23
    :goto_0
    const-class v2, Lteam/opay/pay/kyc/AccountDetailsActivity;

    .line 24
    .line 25
    invoke-direct {v3, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->X(Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method public static final z(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->X(Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final B(Ljava/lang/String;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lteam/opay/pay/account/verify/VerifyExitEvent;

    .line 4
    .line 5
    iget-object v1, v0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 6
    .line 7
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    :cond_0
    move-object v3, v1

    .line 16
    iget-object v1, v0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    const/16 v8, 0x20

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    const-string v5, "C10100"

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v1, v10

    .line 30
    move-object/from16 v4, p1

    .line 31
    .line 32
    invoke-direct/range {v1 .. v9}, Lteam/opay/pay/account/verify/VerifyExitEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 36
    .line 37
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget-object v2, Lteam/opay/pay/account/verify/ModifyType;->TRADE:Lteam/opay/pay/account/verify/ModifyType;

    .line 42
    .line 43
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x0

    .line 52
    const-string v3, "activity"

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0, v10}, Lteam/opay/pay/account/verify/VerifyManager;->X(Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 60
    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move-object v2, v1

    .line 68
    :goto_0
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    sget-object v11, Lteam/opay/pay/settings/TipsDialogFragment;->u:Lteam/opay/pay/settings/TipsDialogFragment$Companion;

    .line 73
    .line 74
    const/16 v20, 0xfd

    .line 75
    .line 76
    const/16 v21, 0x0

    .line 77
    .line 78
    const/4 v12, 0x0

    .line 79
    const/4 v14, 0x0

    .line 80
    const/4 v15, 0x0

    .line 81
    const/16 v16, 0x0

    .line 82
    .line 83
    const/16 v17, 0x0

    .line 84
    .line 85
    const/16 v18, 0x0

    .line 86
    .line 87
    const/16 v19, 0x0

    .line 88
    .line 89
    move-object/from16 v13, p1

    .line 90
    .line 91
    invoke-static/range {v11 .. v21}, Lteam/opay/pay/settings/TipsDialogFragment$Companion;->b(Lteam/opay/pay/settings/TipsDialogFragment$Companion;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IIZZILjava/lang/Object;)Lteam/opay/pay/settings/TipsDialogFragment;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    new-instance v4, Lxqf;

    .line 96
    .line 97
    invoke-direct {v4, v0, v10}, Lxqf;-><init>(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v4}, Lteam/opay/pay/settings/TipsDialogFragment;->Y(Lkotlin/jvm/functions/Function0;)V

    .line 101
    .line 102
    .line 103
    new-instance v4, Lyqf;

    .line 104
    .line 105
    invoke-direct {v4, v0, v10}, Lyqf;-><init>(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v4}, Lteam/opay/pay/settings/TipsDialogFragment;->Z(Lkotlin/jvm/functions/Function0;)V

    .line 109
    .line 110
    .line 111
    iget-object v4, v0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 112
    .line 113
    if-nez v4, :cond_3

    .line 114
    .line 115
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    move-object v2, v4

    .line 120
    :goto_1
    invoke-static {v2, v1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 121
    .line 122
    .line 123
    :goto_2
    return-void
.end method

.method public final E()V
    .locals 10

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "activity"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    sget v0, Lteam/opay/pay/R$string;->set_payment_pin_tip:I

    .line 13
    .line 14
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v7, Lrqf;

    .line 19
    .line 20
    invoke-direct {v7, p0}, Lrqf;-><init>(Lteam/opay/pay/account/verify/VerifyManager;)V

    .line 21
    .line 22
    .line 23
    const/16 v8, 0x28

    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x4

    .line 29
    const/4 v6, 0x0

    .line 30
    invoke-static/range {v1 .. v9}, Lteam/opay/pay/home/security/paypin/a;->b(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ZLjava/lang/String;ILteam/opay/pay/cashier/PaySheetViewModel;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final G(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lteam/opay/pay/account/verify/VerifyMethods;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, p1, v2, v0, v1}, Lteam/opay/pay/account/verify/VerifyManager;->K(Lteam/opay/pay/account/verify/VerifyManager;ZZILjava/lang/Object;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->N(Ljava/util/List;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final H(ZZ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lteam/opay/pay/account/verify/VerifyStepItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getVerifyStepList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v0, v2

    .line 29
    :cond_1
    :goto_0
    if-eqz p1, :cond_a

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getDegradeNodesList()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->T0(Ljava/util/Collection;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object p1, v2

    .line 45
    :goto_1
    if-eqz p1, :cond_3

    .line 46
    .line 47
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    if-nez p1, :cond_4

    .line 51
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    move-object v0, p1

    .line 59
    :goto_2
    invoke-virtual {p0, v0}, Lteam/opay/pay/account/verify/VerifyManager;->b0(Ljava/util/List;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    goto/16 :goto_8

    .line 66
    .line 67
    :cond_5
    if-eqz p2, :cond_9

    .line 68
    .line 69
    if-eqz p1, :cond_9

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_8

    .line 80
    .line 81
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    move-object v1, v0

    .line 86
    check-cast v1, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 87
    .line 88
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v3, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 93
    .line 94
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/VerifyViewModel;->g0()Landroidx/lifecycle/MutableLiveData;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Lteam/opay/pay/account/verify/ValidationType;

    .line 103
    .line 104
    if-eqz v3, :cond_7

    .line 105
    .line 106
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    goto :goto_3

    .line 111
    :cond_7
    move-object v3, v2

    .line 112
    :goto_3
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_6

    .line 117
    .line 118
    move-object v2, v0

    .line 119
    :cond_8
    check-cast v2, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 120
    .line 121
    if-eqz v2, :cond_9

    .line 122
    .line 123
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :cond_9
    :goto_4
    move-object v2, p1

    .line 127
    goto :goto_8

    .line 128
    :cond_a
    if-eqz v0, :cond_b

    .line 129
    .line 130
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getOptionalItemsList()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_b

    .line 135
    .line 136
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->T0(Ljava/util/Collection;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    goto :goto_5

    .line 141
    :cond_b
    move-object p1, v2

    .line 142
    :goto_5
    if-eqz p1, :cond_c

    .line 143
    .line 144
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_c
    if-nez p1, :cond_d

    .line 148
    .line 149
    new-instance v0, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_d
    move-object v0, p1

    .line 156
    :goto_6
    invoke-virtual {p0, v0}, Lteam/opay/pay/account/verify/VerifyManager;->b0(Ljava/util/List;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_e

    .line 161
    .line 162
    goto :goto_8

    .line 163
    :cond_e
    if-eqz p2, :cond_9

    .line 164
    .line 165
    if-eqz p1, :cond_9

    .line 166
    .line 167
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    :cond_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_11

    .line 176
    .line 177
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    move-object v1, v0

    .line 182
    check-cast v1, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 183
    .line 184
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iget-object v3, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 189
    .line 190
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/VerifyViewModel;->g0()Landroidx/lifecycle/MutableLiveData;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    check-cast v3, Lteam/opay/pay/account/verify/ValidationType;

    .line 199
    .line 200
    if-eqz v3, :cond_10

    .line 201
    .line 202
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    goto :goto_7

    .line 207
    :cond_10
    move-object v3, v2

    .line 208
    :goto_7
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_f

    .line 213
    .line 214
    move-object v2, v0

    .line 215
    :cond_11
    check-cast v2, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 216
    .line 217
    if-eqz v2, :cond_9

    .line 218
    .line 219
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :goto_8
    return-object v2
.end method

.method public final J(ZZ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lteam/opay/pay/account/verify/ValidationType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->g0()Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-boolean v2, p0, Lteam/opay/pay/account/verify/VerifyManager;->b:Z

    .line 19
    .line 20
    const/16 v3, 0xa

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyManager;->H(ZZ)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_6

    .line 30
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 55
    .line 56
    invoke-static {}, Lteam/opay/pay/account/verify/ValidationType;->getEntries()Lwo5;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_2

    .line 69
    .line 70
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    move-object v7, v6

    .line 75
    check-cast v7, Lteam/opay/pay/account/verify/ValidationType;

    .line 76
    .line 77
    invoke-virtual {v7}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    if-nez v8, :cond_1

    .line 86
    .line 87
    const-string v8, ""

    .line 88
    .line 89
    :cond_1
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_0

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    move-object v6, v4

    .line 97
    :goto_1
    check-cast v6, Lteam/opay/pay/account/verify/ValidationType;

    .line 98
    .line 99
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    move-object v4, v2

    .line 104
    goto :goto_4

    .line 105
    :cond_4
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 106
    .line 107
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValStepInfos()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_5

    .line 118
    .line 119
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 120
    .line 121
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyViewModel;->J()Lteam/opay/pay/account/verify/VerifyStep;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyStep;->b()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lteam/opay/pay/account/verify/VerifyPoolItem;

    .line 134
    .line 135
    if-eqz p1, :cond_5

    .line 136
    .line 137
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyPoolItem;->getValTypesExtraTypes()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    goto :goto_2

    .line 142
    :cond_5
    move-object p1, v4

    .line 143
    :goto_2
    if-eqz p1, :cond_6

    .line 144
    .line 145
    new-instance v4, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_6

    .line 163
    .line 164
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Lteam/opay/pay/account/verify/ValTypesExtraTypes;

    .line 169
    .line 170
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/ValTypesExtraTypes;->getValidationType()Lteam/opay/pay/account/verify/ValidationType;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_6
    :goto_4
    if-eqz v4, :cond_a

    .line 182
    .line 183
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    :cond_7
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_a

    .line 192
    .line 193
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    check-cast v2, Lteam/opay/pay/account/verify/ValidationType;

    .line 198
    .line 199
    if-eqz p2, :cond_8

    .line 200
    .line 201
    if-eq v2, v0, :cond_8

    .line 202
    .line 203
    if-nez v2, :cond_9

    .line 204
    .line 205
    :cond_8
    if-eq v2, v0, :cond_7

    .line 206
    .line 207
    if-eqz v2, :cond_7

    .line 208
    .line 209
    :cond_9
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_a
    sget-object p1, Lteam/opay/pay/account/verify/ValidationType;->MTN:Lteam/opay/pay/account/verify/ValidationType;

    .line 214
    .line 215
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    if-eqz p2, :cond_b

    .line 220
    .line 221
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    :cond_b
    return-object v1
.end method

.method public final L(Lteam/opay/pay/account/verify/ValidationType;)Ljava/lang/String;
    .locals 5
    .param p1    # Lteam/opay/pay/account/verify/ValidationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "validationType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 28
    .line 29
    if-eqz p1, :cond_9

    .line 30
    .line 31
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getOptionalItemsList()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object v0, v1

    .line 47
    :goto_1
    if-eqz v0, :cond_6

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_3
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 57
    .line 58
    if-eqz v0, :cond_9

    .line 59
    .line 60
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getOptionalItemsList()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_9

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    move-object v3, v2

    .line 81
    check-cast v3, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 82
    .line 83
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_4

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    move-object v2, v1

    .line 99
    :goto_2
    check-cast v2, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 100
    .line 101
    if-eqz v2, :cond_9

    .line 102
    .line 103
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValId()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    goto :goto_5

    .line 108
    :cond_6
    :goto_3
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 109
    .line 110
    if-eqz v0, :cond_9

    .line 111
    .line 112
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getDegradeNodesList()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_9

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_8

    .line 127
    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    move-object v3, v2

    .line 133
    check-cast v3, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 134
    .line 135
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_7

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_8
    move-object v2, v1

    .line 151
    :goto_4
    check-cast v2, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 152
    .line 153
    if-eqz v2, :cond_9

    .line 154
    .line 155
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValId()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    :cond_9
    :goto_5
    return-object v1
.end method

.method public final M(Lteam/opay/pay/account/verify/ValidationType;)Ljava/util/Map;
    .locals 5
    .param p1    # Lteam/opay/pay/account/verify/ValidationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/ValidationType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "validationType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->b:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_12

    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 12
    .line 13
    if-nez v0, :cond_8

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_5

    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getVerifyStepList()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_5

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x1

    .line 34
    if-ne v0, v2, :cond_5

    .line 35
    .line 36
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 37
    .line 38
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getVerifyStepList()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object v0, v1

    .line 59
    :goto_0
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move-object v2, v1

    .line 67
    :goto_1
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValTypesExtraMap()Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    goto/16 :goto_a

    .line 82
    .line 83
    :cond_2
    if-eqz v0, :cond_15

    .line 84
    .line 85
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getOptionalItemsList()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_15

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    move-object v3, v2

    .line 106
    check-cast v3, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 107
    .line 108
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_3

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    move-object v2, v1

    .line 124
    :goto_2
    check-cast v2, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 125
    .line 126
    if-eqz v2, :cond_15

    .line 127
    .line 128
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValTypesExtraMap()Ljava/util/Map;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    goto/16 :goto_a

    .line 133
    .line 134
    :cond_5
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 135
    .line 136
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-eqz v0, :cond_15

    .line 141
    .line 142
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getVerifyStepList()Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_15

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_7

    .line 157
    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    move-object v3, v2

    .line 163
    check-cast v3, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 164
    .line 165
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_6

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_7
    move-object v2, v1

    .line 181
    :goto_3
    check-cast v2, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 182
    .line 183
    if-eqz v2, :cond_15

    .line 184
    .line 185
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValTypesExtraMap()Ljava/util/Map;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    goto/16 :goto_a

    .line 190
    .line 191
    :cond_8
    if-eqz v0, :cond_9

    .line 192
    .line 193
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    goto :goto_4

    .line 198
    :cond_9
    move-object v0, v1

    .line 199
    :goto_4
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_a

    .line 208
    .line 209
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 210
    .line 211
    if-eqz p1, :cond_15

    .line 212
    .line 213
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValTypesExtraMap()Ljava/util/Map;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    goto/16 :goto_a

    .line 218
    .line 219
    :cond_a
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 220
    .line 221
    if-eqz v0, :cond_b

    .line 222
    .line 223
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getOptionalItemsList()Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    goto :goto_5

    .line 228
    :cond_b
    move-object v0, v1

    .line 229
    :goto_5
    if-eqz v0, :cond_f

    .line 230
    .line 231
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_c

    .line 236
    .line 237
    goto :goto_7

    .line 238
    :cond_c
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 239
    .line 240
    if-eqz v0, :cond_15

    .line 241
    .line 242
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getOptionalItemsList()Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-eqz v0, :cond_15

    .line 247
    .line 248
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-eqz v2, :cond_e

    .line 257
    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    move-object v3, v2

    .line 263
    check-cast v3, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 264
    .line 265
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-eqz v3, :cond_d

    .line 278
    .line 279
    goto :goto_6

    .line 280
    :cond_e
    move-object v2, v1

    .line 281
    :goto_6
    check-cast v2, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 282
    .line 283
    if-eqz v2, :cond_15

    .line 284
    .line 285
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValTypesExtraMap()Ljava/util/Map;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    goto/16 :goto_a

    .line 290
    .line 291
    :cond_f
    :goto_7
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 292
    .line 293
    if-eqz v0, :cond_15

    .line 294
    .line 295
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getDegradeNodesList()Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    if-eqz v0, :cond_15

    .line 300
    .line 301
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-eqz v2, :cond_11

    .line 310
    .line 311
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    move-object v3, v2

    .line 316
    check-cast v3, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 317
    .line 318
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    if-eqz v3, :cond_10

    .line 331
    .line 332
    goto :goto_8

    .line 333
    :cond_11
    move-object v2, v1

    .line 334
    :goto_8
    check-cast v2, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 335
    .line 336
    if-eqz v2, :cond_15

    .line 337
    .line 338
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValTypesExtraMap()Ljava/util/Map;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    goto :goto_a

    .line 343
    :cond_12
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 344
    .line 345
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    if-eqz v0, :cond_15

    .line 350
    .line 351
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValStepInfos()Ljava/util/List;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    if-eqz v0, :cond_15

    .line 356
    .line 357
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 358
    .line 359
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyViewModel;->J()Lteam/opay/pay/account/verify/VerifyStep;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyStep;->b()I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    check-cast v0, Lteam/opay/pay/account/verify/VerifyPoolItem;

    .line 372
    .line 373
    if-eqz v0, :cond_15

    .line 374
    .line 375
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolItem;->getValTypesExtraTypes()Ljava/util/List;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    if-eqz v0, :cond_15

    .line 380
    .line 381
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    if-eqz v2, :cond_14

    .line 390
    .line 391
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    move-object v3, v2

    .line 396
    check-cast v3, Lteam/opay/pay/account/verify/ValTypesExtraTypes;

    .line 397
    .line 398
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/ValTypesExtraTypes;->getValidationType()Lteam/opay/pay/account/verify/ValidationType;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    if-ne v3, p1, :cond_13

    .line 403
    .line 404
    goto :goto_9

    .line 405
    :cond_14
    move-object v2, v1

    .line 406
    :goto_9
    check-cast v2, Lteam/opay/pay/account/verify/ValTypesExtraTypes;

    .line 407
    .line 408
    if-eqz v2, :cond_15

    .line 409
    .line 410
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/ValTypesExtraTypes;->getValTypesExtraMap()Ljava/util/Map;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    :cond_15
    :goto_a
    return-object v1
.end method

.method public final N(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lteam/opay/pay/account/verify/ValidationType;",
            ">;)",
            "Ljava/util/List<",
            "Lteam/opay/pay/account/verify/VerifyMethods;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lteam/opay/pay/account/verify/ValidationType;->OTP:Lteam/opay/pay/account/verify/ValidationType;

    .line 4
    .line 5
    invoke-virtual {p0, v2}, Lteam/opay/pay/account/verify/VerifyManager;->M(Lteam/opay/pay/account/verify/ValidationType;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const-string v4, "hideMobile"

    .line 13
    .line 14
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, v3

    .line 22
    :goto_0
    sget-object v4, Lteam/opay/pay/account/verify/ValidationType;->EMAIL:Lteam/opay/pay/account/verify/ValidationType;

    .line 23
    .line 24
    invoke-virtual {p0, v4}, Lteam/opay/pay/account/verify/VerifyManager;->M(Lteam/opay/pay/account/verify/ValidationType;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    const-string v3, "userVerifyEmail"

    .line 31
    .line 32
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    if-eqz p1, :cond_9

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_9

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    move-object v7, v5

    .line 60
    check-cast v7, Lteam/opay/pay/account/verify/ValidationType;

    .line 61
    .line 62
    if-nez v7, :cond_2

    .line 63
    .line 64
    const/4 v5, -0x1

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    sget-object v5, Lteam/opay/pay/account/verify/VerifyManager$a;->a:[I

    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    aget v5, v5, v6

    .line 73
    .line 74
    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :pswitch_0
    new-instance v5, Lteam/opay/pay/account/verify/VerifyMethods;

    .line 82
    .line 83
    sget v8, Lteam/opay/pay/R$mipmap;->ic_verify_id_icon:I

    .line 84
    .line 85
    sget v6, Lteam/opay/pay/R$string;->kyc_bvn:I

    .line 86
    .line 87
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    sget v6, Lteam/opay/pay/R$string;->verify_bvn_desc:I

    .line 92
    .line 93
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    const/16 v12, 0x10

    .line 98
    .line 99
    const/4 v13, 0x0

    .line 100
    const/4 v11, 0x0

    .line 101
    move-object v6, v5

    .line 102
    invoke-direct/range {v6 .. v13}, Lteam/opay/pay/account/verify/VerifyMethods;-><init>(Lteam/opay/pay/account/verify/ValidationType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :pswitch_1
    new-instance v5, Lteam/opay/pay/account/verify/VerifyMethods;

    .line 110
    .line 111
    sget v8, Lteam/opay/pay/R$mipmap;->ic_verify_name_pwd_icon:I

    .line 112
    .line 113
    sget v6, Lteam/opay/pay/R$string;->osdk_name:I

    .line 114
    .line 115
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    sget v6, Lteam/opay/pay/R$string;->verify_psw_name_desc:I

    .line 120
    .line 121
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    const/16 v12, 0x10

    .line 126
    .line 127
    const/4 v13, 0x0

    .line 128
    const/4 v11, 0x0

    .line 129
    move-object v6, v5

    .line 130
    invoke-direct/range {v6 .. v13}, Lteam/opay/pay/account/verify/VerifyMethods;-><init>(Lteam/opay/pay/account/verify/ValidationType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :pswitch_2
    new-instance v5, Lteam/opay/pay/account/verify/VerifyMethods;

    .line 138
    .line 139
    sget v8, Lteam/opay/pay/R$mipmap;->ic_verify_id_icon:I

    .line 140
    .line 141
    sget v6, Lteam/opay/pay/R$string;->kyc_nin:I

    .line 142
    .line 143
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    sget v6, Lteam/opay/pay/R$string;->verify_nin_desc:I

    .line 148
    .line 149
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    const/16 v12, 0x10

    .line 154
    .line 155
    const/4 v13, 0x0

    .line 156
    const/4 v11, 0x0

    .line 157
    move-object v6, v5

    .line 158
    invoke-direct/range {v6 .. v13}, Lteam/opay/pay/account/verify/VerifyMethods;-><init>(Lteam/opay/pay/account/verify/ValidationType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 159
    .line 160
    .line 161
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :pswitch_3
    new-instance v5, Lteam/opay/pay/account/verify/VerifyMethods;

    .line 166
    .line 167
    sget v8, Lteam/opay/pay/R$mipmap;->ic_verify_login_pwd_icon:I

    .line 168
    .line 169
    sget v6, Lteam/opay/pay/R$string;->verify_password:I

    .line 170
    .line 171
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    sget v6, Lteam/opay/pay/R$string;->verify_psw_pin_desc:I

    .line 176
    .line 177
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    const/16 v12, 0x10

    .line 182
    .line 183
    const/4 v13, 0x0

    .line 184
    const/4 v11, 0x0

    .line 185
    move-object v6, v5

    .line 186
    invoke-direct/range {v6 .. v13}, Lteam/opay/pay/account/verify/VerifyMethods;-><init>(Lteam/opay/pay/account/verify/ValidationType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 187
    .line 188
    .line 189
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :pswitch_4
    new-instance v5, Lteam/opay/pay/account/verify/VerifyMethods;

    .line 195
    .line 196
    sget v8, Lteam/opay/pay/R$mipmap;->ic_verify_pwd_icon:I

    .line 197
    .line 198
    sget v6, Lteam/opay/pay/R$string;->osdk_payment_pin:I

    .line 199
    .line 200
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    sget v6, Lteam/opay/pay/R$string;->verify_payment_pin_desc:I

    .line 205
    .line 206
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    const/16 v12, 0x10

    .line 211
    .line 212
    const/4 v13, 0x0

    .line 213
    const/4 v11, 0x0

    .line 214
    move-object v6, v5

    .line 215
    invoke-direct/range {v6 .. v13}, Lteam/opay/pay/account/verify/VerifyMethods;-><init>(Lteam/opay/pay/account/verify/ValidationType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 216
    .line 217
    .line 218
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto/16 :goto_1

    .line 222
    .line 223
    :pswitch_5
    new-instance v5, Lteam/opay/pay/account/verify/VerifyMethods;

    .line 224
    .line 225
    sget v8, Lteam/opay/pay/R$mipmap;->osdk_ic_anser_question:I

    .line 226
    .line 227
    sget v6, Lteam/opay/pay/R$string;->verify_security_question_title:I

    .line 228
    .line 229
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    sget v6, Lteam/opay/pay/R$string;->verify_security_question_desc:I

    .line 234
    .line 235
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    const/16 v12, 0x10

    .line 240
    .line 241
    const/4 v13, 0x0

    .line 242
    const/4 v11, 0x0

    .line 243
    move-object v6, v5

    .line 244
    invoke-direct/range {v6 .. v13}, Lteam/opay/pay/account/verify/VerifyMethods;-><init>(Lteam/opay/pay/account/verify/ValidationType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 245
    .line 246
    .line 247
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :pswitch_6
    new-instance v5, Lteam/opay/pay/account/verify/VerifyMethods;

    .line 253
    .line 254
    sget v8, Lteam/opay/pay/R$mipmap;->osdk_ic_kyc_face_success:I

    .line 255
    .line 256
    sget v6, Lteam/opay/pay/R$string;->verify_otp_choose_face_title:I

    .line 257
    .line 258
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    sget v6, Lteam/opay/pay/R$string;->verify_otp_choose_face_desc:I

    .line 263
    .line 264
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    const/16 v12, 0x10

    .line 269
    .line 270
    const/4 v13, 0x0

    .line 271
    const/4 v11, 0x0

    .line 272
    move-object v6, v5

    .line 273
    invoke-direct/range {v6 .. v13}, Lteam/opay/pay/account/verify/VerifyMethods;-><init>(Lteam/opay/pay/account/verify/ValidationType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 274
    .line 275
    .line 276
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    goto/16 :goto_1

    .line 280
    .line 281
    :pswitch_7
    new-instance v5, Lteam/opay/pay/account/verify/VerifyMethods;

    .line 282
    .line 283
    sget v8, Lteam/opay/pay/R$mipmap;->ic_whatsapp_otp_icon:I

    .line 284
    .line 285
    sget v6, Lteam/opay/pay/R$string;->verify_otp_choose_whatsapp_tile:I

    .line 286
    .line 287
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    sget v6, Lteam/opay/pay/R$string;->verify_otp_choose_whatsapp_desc:I

    .line 292
    .line 293
    if-nez v2, :cond_3

    .line 294
    .line 295
    iget-object v10, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 296
    .line 297
    invoke-virtual {v10}, Lteam/opay/pay/account/verify/VerifyViewModel;->R()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v10

    .line 301
    goto :goto_3

    .line 302
    :cond_3
    move-object v10, v2

    .line 303
    :goto_3
    new-array v11, v1, [Ljava/lang/Object;

    .line 304
    .line 305
    aput-object v10, v11, v0

    .line 306
    .line 307
    invoke-static {v6, v11}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    sget v6, Lteam/opay/pay/R$string;->verify_whatsapp_choose_single_desc:I

    .line 312
    .line 313
    if-nez v2, :cond_4

    .line 314
    .line 315
    iget-object v11, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 316
    .line 317
    invoke-virtual {v11}, Lteam/opay/pay/account/verify/VerifyViewModel;->R()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v11

    .line 321
    goto :goto_4

    .line 322
    :cond_4
    move-object v11, v2

    .line 323
    :goto_4
    new-array v12, v1, [Ljava/lang/Object;

    .line 324
    .line 325
    aput-object v11, v12, v0

    .line 326
    .line 327
    invoke-static {v6, v12}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v11

    .line 331
    move-object v6, v5

    .line 332
    invoke-direct/range {v6 .. v11}, Lteam/opay/pay/account/verify/VerifyMethods;-><init>(Lteam/opay/pay/account/verify/ValidationType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    goto/16 :goto_1

    .line 339
    .line 340
    :pswitch_8
    new-instance v5, Lteam/opay/pay/account/verify/VerifyMethods;

    .line 341
    .line 342
    sget v8, Lteam/opay/pay/R$mipmap;->ic_verify_otp_email:I

    .line 343
    .line 344
    sget v6, Lteam/opay/pay/R$string;->verify_otp_choose_email_tile:I

    .line 345
    .line 346
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    sget v6, Lteam/opay/pay/R$string;->verify_otp_choose_email_desc:I

    .line 351
    .line 352
    if-nez v3, :cond_5

    .line 353
    .line 354
    sget-object v10, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 355
    .line 356
    invoke-virtual {v10}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 357
    .line 358
    .line 359
    move-result-object v10

    .line 360
    invoke-virtual {v10}, Lteam/opay/core/account/AccountInfoManager;->g()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v10

    .line 364
    goto :goto_5

    .line 365
    :cond_5
    move-object v10, v3

    .line 366
    :goto_5
    new-array v11, v1, [Ljava/lang/Object;

    .line 367
    .line 368
    aput-object v10, v11, v0

    .line 369
    .line 370
    invoke-static {v6, v11}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v10

    .line 374
    sget v6, Lteam/opay/pay/R$string;->verify_email_choose_single_desc:I

    .line 375
    .line 376
    if-nez v3, :cond_6

    .line 377
    .line 378
    sget-object v11, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 379
    .line 380
    invoke-virtual {v11}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 381
    .line 382
    .line 383
    move-result-object v11

    .line 384
    invoke-virtual {v11}, Lteam/opay/core/account/AccountInfoManager;->g()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v11

    .line 388
    goto :goto_6

    .line 389
    :cond_6
    move-object v11, v3

    .line 390
    :goto_6
    new-array v12, v1, [Ljava/lang/Object;

    .line 391
    .line 392
    aput-object v11, v12, v0

    .line 393
    .line 394
    invoke-static {v6, v12}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v11

    .line 398
    move-object v6, v5

    .line 399
    invoke-direct/range {v6 .. v11}, Lteam/opay/pay/account/verify/VerifyMethods;-><init>(Lteam/opay/pay/account/verify/ValidationType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    goto/16 :goto_1

    .line 406
    .line 407
    :pswitch_9
    new-instance v5, Lteam/opay/pay/account/verify/VerifyMethods;

    .line 408
    .line 409
    sget v8, Lteam/opay/pay/R$mipmap;->ic_verify_otp_phone:I

    .line 410
    .line 411
    sget v6, Lteam/opay/pay/R$string;->verify_otp_choose_otp_title:I

    .line 412
    .line 413
    invoke-static {v6}, Ljmf;->k(I)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v9

    .line 417
    sget v6, Lteam/opay/pay/R$string;->verify_otp_choose_otp_desc:I

    .line 418
    .line 419
    if-nez v2, :cond_7

    .line 420
    .line 421
    iget-object v10, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 422
    .line 423
    invoke-virtual {v10}, Lteam/opay/pay/account/verify/VerifyViewModel;->R()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v10

    .line 427
    goto :goto_7

    .line 428
    :cond_7
    move-object v10, v2

    .line 429
    :goto_7
    new-array v11, v1, [Ljava/lang/Object;

    .line 430
    .line 431
    aput-object v10, v11, v0

    .line 432
    .line 433
    invoke-static {v6, v11}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v10

    .line 437
    sget v6, Lteam/opay/pay/R$string;->verify_otp_choose_single_desc:I

    .line 438
    .line 439
    if-nez v2, :cond_8

    .line 440
    .line 441
    iget-object v11, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 442
    .line 443
    invoke-virtual {v11}, Lteam/opay/pay/account/verify/VerifyViewModel;->R()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v11

    .line 447
    goto :goto_8

    .line 448
    :cond_8
    move-object v11, v2

    .line 449
    :goto_8
    new-array v12, v1, [Ljava/lang/Object;

    .line 450
    .line 451
    aput-object v11, v12, v0

    .line 452
    .line 453
    invoke-static {v6, v12}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v11

    .line 457
    move-object v6, v5

    .line 458
    invoke-direct/range {v6 .. v11}, Lteam/opay/pay/account/verify/VerifyMethods;-><init>(Lteam/opay/pay/account/verify/ValidationType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    goto/16 :goto_1

    .line 465
    .line 466
    :cond_9
    return-object v4

    .line 467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final O()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-static {p0, v3, v1, v0, v2}, Lteam/opay/pay/account/verify/VerifyManager;->I(Lteam/opay/pay/account/verify/VerifyManager;ZZILjava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 22
    :cond_1
    xor-int/lit8 v0, v1, 0x1

    .line 23
    .line 24
    return v0

    .line 25
    :cond_2
    return v1
.end method

.method public final P(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1
    .param p1    # Landroidx/appcompat/app/AppCompatActivity;
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
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    return-void
.end method

.method public final Q(Z)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p0, p1, v3, v1, v0}, Lteam/opay/pay/account/verify/VerifyManager;->I(Lteam/opay/pay/account/verify/VerifyManager;ZZILjava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 v3, 0x1

    .line 22
    :cond_1
    xor-int/lit8 p1, v3, 0x1

    .line 23
    .line 24
    return p1

    .line 25
    :cond_2
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 26
    .line 27
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_9

    .line 32
    .line 33
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValStepInfos()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_9

    .line 38
    .line 39
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 40
    .line 41
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->J()Lteam/opay/pay/account/verify/VerifyStep;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStep;->b()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lteam/opay/pay/account/verify/VerifyPoolItem;

    .line 54
    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyPoolItem;->getValTypesExtraTypes()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    const/4 v0, 0x0

    .line 70
    :goto_0
    if-le v0, v2, :cond_9

    .line 71
    .line 72
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyPoolItem;->getValTypesExtraTypes()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    .line 79
    .line 80
    const/16 v4, 0xa

    .line 81
    .line 82
    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_6

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Lteam/opay/pay/account/verify/ValTypesExtraTypes;

    .line 104
    .line 105
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/ValTypesExtraTypes;->getValidationType()Lteam/opay/pay/account/verify/ValidationType;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-ne p1, v1, :cond_8

    .line 123
    .line 124
    sget-object p1, Lteam/opay/pay/account/verify/ValidationType;->MTN:Lteam/opay/pay/account/verify/ValidationType;

    .line 125
    .line 126
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_8

    .line 131
    .line 132
    sget-object p1, Lteam/opay/pay/account/verify/ValidationType;->OTP:Lteam/opay/pay/account/verify/ValidationType;

    .line 133
    .line 134
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-nez p1, :cond_7

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_7
    const/4 v2, 0x0

    .line 142
    :cond_8
    :goto_2
    return v2

    .line 143
    :cond_9
    :goto_3
    return v3
.end method

.method public final S(Lteam/opay/pay/account/verify/ValidationType;Z)V
    .locals 1
    .param p1    # Lteam/opay/pay/account/verify/ValidationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->OTP:Lteam/opay/pay/account/verify/ValidationType;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    sget-object p2, Lteam/opay/pay/account/verify/ValidationType;->MTN:Lteam/opay/pay/account/verify/ValidationType;

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lteam/opay/pay/account/verify/VerifyManager;->q(Lteam/opay/pay/account/verify/ValidationType;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->g0()Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object p2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 31
    .line 32
    invoke-virtual {p2}, Lteam/opay/pay/account/verify/VerifyViewModel;->g0()Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "modifyType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "apiCode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "message"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/account/verify/VerifyManager;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    sparse-switch p1, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :sswitch_0
    const-string p1, "9000016"

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, p3}, Lteam/opay/pay/account/verify/VerifyManager;->v(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :sswitch_1
    const-string p1, "90013"

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, p3}, Lteam/opay/pay/account/verify/VerifyManager;->y(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :sswitch_2
    const-string p1, "01037"

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyManager;->E()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :sswitch_3
    const-string p1, "01027"

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {p0, p3}, Lteam/opay/pay/account/verify/VerifyManager;->s(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :sswitch_4
    const-string p1, "01017"

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_5

    .line 86
    .line 87
    :goto_0
    new-instance p1, Lteam/opay/pay/account/verify/VerifyExitEvent;

    .line 88
    .line 89
    iget-object p2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 90
    .line 91
    invoke-virtual {p2}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    if-nez p2, :cond_4

    .line 96
    .line 97
    const-string p2, ""

    .line 98
    .line 99
    :cond_4
    move-object v2, p2

    .line 100
    iget-object p2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 101
    .line 102
    invoke-virtual {p2}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const/16 v7, 0x28

    .line 107
    .line 108
    const/4 v8, 0x0

    .line 109
    const/4 v1, 0x0

    .line 110
    const/4 v4, 0x0

    .line 111
    const/4 v6, 0x0

    .line 112
    move-object v0, p1

    .line 113
    move-object v3, p3

    .line 114
    invoke-direct/range {v0 .. v8}, Lteam/opay/pay/account/verify/VerifyExitEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p3}, Lkmf;->N(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->X(Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    invoke-virtual {p0, p3}, Lteam/opay/pay/account/verify/VerifyManager;->B(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    return-void

    .line 128
    nop

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x2bb68b5 -> :sswitch_4
        0x2bb68d4 -> :sswitch_3
        0x2bb68f3 -> :sswitch_2
        0x339c7db -> :sswitch_1
        0x1be6c39e -> :sswitch_0
    .end sparse-switch
.end method

.method public final U(Lteam/opay/pay/account/verify/VerifyPoolResponse;)V
    .locals 3
    .param p1    # Lteam/opay/pay/account/verify/VerifyPoolResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->J0(Lteam/opay/pay/account/verify/VerifyPoolResponse;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyManager;->V()V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->b:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getNeedVerify()Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyManager;->a0()V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getVerifyStepList()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    :goto_1
    if-eqz p1, :cond_4

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    if-eq p1, v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lteam/opay/pay/account/verify/VerifyManager;->f0(Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyManager;->i0()V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyManager;->a0()V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 66
    .line 67
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValStepInfos()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_6

    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    :cond_6
    iput v1, p0, Lteam/opay/pay/account/verify/VerifyManager;->e:I

    .line 84
    .line 85
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 86
    .line 87
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->i0()Landroidx/lifecycle/MutableLiveData;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 92
    .line 93
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->J()Lteam/opay/pay/account/verify/VerifyStep;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :goto_2
    return-void
.end method

.method public final V()V
    .locals 13

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lteam/opay/pay/account/verify/VerifyManager;->b:Z

    .line 8
    .line 9
    const-string v2, "verify_pool_result"

    .line 10
    .line 11
    const-string v3, "valChainId"

    .line 12
    .line 13
    const-string v4, "modify_pool"

    .line 14
    .line 15
    const-string v5, "modify_from"

    .line 16
    .line 17
    const-string v6, "modify_type"

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    new-array v1, v7, [Lkotlin/Pair;

    .line 24
    .line 25
    sget-object v7, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 26
    .line 27
    invoke-virtual {v7}, Lteam/opay/pay/account/verify/c;->h()Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    if-eqz v9, :cond_0

    .line 44
    .line 45
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    check-cast v9, Ljava/util/Map$Entry;

    .line 50
    .line 51
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-static {v10, v9}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-static {v1, v9}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v7, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 69
    .line 70
    invoke-virtual {v7}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-static {v6, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-static {v1, v6}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v6, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 83
    .line 84
    invoke-virtual {v6}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-static {v5, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-static {v1, v5}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget-object v5, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 97
    .line 98
    invoke-virtual {v5}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    if-eqz v5, :cond_1

    .line 103
    .line 104
    invoke-virtual {v5}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getVerifyStepList()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    if-eqz v5, :cond_1

    .line 109
    .line 110
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    goto :goto_1

    .line 119
    :cond_1
    move-object v5, v8

    .line 120
    :goto_1
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-static {v1, v4}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-eqz v0, :cond_2

    .line 129
    .line 130
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    goto :goto_2

    .line 135
    :cond_2
    move-object v4, v8

    .line 136
    :goto_2
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-static {v1, v3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    sget-object v3, Lx7b;->a:Lx7b;

    .line 145
    .line 146
    array-length v4, v1

    .line 147
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, [Lkotlin/Pair;

    .line 152
    .line 153
    invoke-virtual {v3, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_7

    .line 157
    .line 158
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    if-eqz v0, :cond_7

    .line 164
    .line 165
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValStepInfos()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    if-eqz v9, :cond_7

    .line 170
    .line 171
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    if-eqz v10, :cond_7

    .line 180
    .line 181
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    check-cast v10, Lteam/opay/pay/account/verify/VerifyPoolItem;

    .line 186
    .line 187
    invoke-virtual {v10}, Lteam/opay/pay/account/verify/VerifyPoolItem;->getValTypesExtraTypes()Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    if-eqz v10, :cond_5

    .line 192
    .line 193
    new-instance v11, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    :cond_4
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    if-eqz v12, :cond_6

    .line 207
    .line 208
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    check-cast v12, Lteam/opay/pay/account/verify/ValTypesExtraTypes;

    .line 213
    .line 214
    invoke-virtual {v12}, Lteam/opay/pay/account/verify/ValTypesExtraTypes;->getValidationType()Lteam/opay/pay/account/verify/ValidationType;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    if-eqz v12, :cond_4

    .line 219
    .line 220
    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_5
    move-object v11, v8

    .line 225
    :cond_6
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_7
    new-array v7, v7, [Lkotlin/Pair;

    .line 234
    .line 235
    sget-object v9, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 236
    .line 237
    invoke-virtual {v9}, Lteam/opay/pay/account/verify/c;->h()Ljava/util/Map;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v10

    .line 253
    if-eqz v10, :cond_8

    .line 254
    .line 255
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    check-cast v10, Ljava/util/Map$Entry;

    .line 260
    .line 261
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v11

    .line 265
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    invoke-static {v11, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    invoke-static {v7, v10}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    goto :goto_5

    .line 278
    :cond_8
    iget-object v9, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 279
    .line 280
    invoke-virtual {v9}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    invoke-static {v6, v9}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-static {v7, v6}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    iget-object v7, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 293
    .line 294
    invoke-virtual {v7}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    invoke-static {v5, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    invoke-static {v6, v5}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-static {v4, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-static {v5, v1}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    if-eqz v0, :cond_9

    .line 319
    .line 320
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    goto :goto_6

    .line 325
    :cond_9
    move-object v4, v8

    .line 326
    :goto_6
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-static {v1, v3}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    sget-object v3, Lx7b;->a:Lx7b;

    .line 335
    .line 336
    array-length v4, v1

    .line 337
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    check-cast v1, [Lkotlin/Pair;

    .line 342
    .line 343
    invoke-virtual {v3, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 344
    .line 345
    .line 346
    :goto_7
    sget-object v1, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 347
    .line 348
    invoke-virtual {v1, v0}, Lteam/opay/pay/account/verify/c;->k(Lteam/opay/pay/account/verify/VerifyPoolResponse;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/c;->i()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    if-eqz v0, :cond_b

    .line 356
    .line 357
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getExtraMap()Ljava/util/Map;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    if-eqz v0, :cond_b

    .line 362
    .line 363
    const-string v1, "hitSecurityLockNotice"

    .line 364
    .line 365
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, Ljava/lang/String;

    .line 370
    .line 371
    if-eqz v0, :cond_b

    .line 372
    .line 373
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    if-lez v1, :cond_a

    .line 378
    .line 379
    move-object v8, v0

    .line 380
    :cond_a
    if-eqz v8, :cond_b

    .line 381
    .line 382
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 383
    .line 384
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-virtual {v0, v8}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    :cond_b
    return-void
.end method

.method public final W()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValStepInfos()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 22
    .line 23
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->J()Lteam/opay/pay/account/verify/VerifyStep;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-lez v0, :cond_9

    .line 28
    .line 29
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyStep;->b()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-lt v2, v0, :cond_1

    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 38
    .line 39
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValStepInfos()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyStep;->b()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lteam/opay/pay/account/verify/VerifyPoolItem;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move-object v0, v2

    .line 64
    :goto_1
    if-nez v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyManager;->a0()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolItem;->getValTypesExtraTypes()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyStep;->a()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lteam/opay/pay/account/verify/ValTypesExtraTypes;

    .line 85
    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/ValTypesExtraTypes;->getValidationType()Lteam/opay/pay/account/verify/ValidationType;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    :cond_4
    if-nez v2, :cond_5

    .line 93
    .line 94
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyManager;->a0()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_5
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolItem;->getValTypesExtraTypes()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    const/4 v3, 0x1

    .line 107
    if-le v1, v3, :cond_8

    .line 108
    .line 109
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolItem;->getValTypesExtraTypes()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    .line 114
    .line 115
    const/16 v2, 0xa

    .line 116
    .line 117
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_6

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Lteam/opay/pay/account/verify/ValTypesExtraTypes;

    .line 139
    .line 140
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/ValTypesExtraTypes;->getValidationType()Lteam/opay/pay/account/verify/ValidationType;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    const/4 v2, 0x2

    .line 153
    if-ne v0, v2, :cond_7

    .line 154
    .line 155
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->MTN:Lteam/opay/pay/account/verify/ValidationType;

    .line 156
    .line 157
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_7

    .line 162
    .line 163
    sget-object v2, Lteam/opay/pay/account/verify/ValidationType;->OTP:Lteam/opay/pay/account/verify/ValidationType;

    .line 164
    .line 165
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_7

    .line 170
    .line 171
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 172
    .line 173
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->g0()Landroidx/lifecycle/MutableLiveData;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_7
    invoke-virtual {p0, v3}, Lteam/opay/pay/account/verify/VerifyManager;->f0(Z)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_8
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 186
    .line 187
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->g0()Landroidx/lifecycle/MutableLiveData;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyManager;->a0()V

    .line 196
    .line 197
    .line 198
    :goto_4
    return-void
.end method

.method public final X(Lteam/opay/pay/account/verify/VerifyExitEvent;)V
    .locals 7
    .param p1    # Lteam/opay/pay/account/verify/VerifyExitEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v2, "verify_pool_exit_key"

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v3, p1

    .line 21
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyExitEvent;->d()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v1, "failed"

    .line 30
    .line 31
    invoke-virtual {p0, v1, v0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final Y(Lteam/opay/core/android/arch/Resource;Lteam/opay/pay/account/verify/ValidationType;ZLkotlin/jvm/functions/Function1;)V
    .locals 10
    .param p1    # Lteam/opay/core/android/arch/Resource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/account/verify/ValidationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/account/verify/ValidationResponse;",
            ">;",
            "Lteam/opay/pay/account/verify/ValidationType;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "resource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "validationType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "fail"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    new-instance p1, Lteam/opay/pay/account/verify/VerifyExitEvent;

    .line 19
    .line 20
    iget-object p2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 21
    .line 22
    invoke-virtual {p2}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    const-string p2, ""

    .line 29
    .line 30
    :cond_0
    move-object v3, p2

    .line 31
    sget p2, Lteam/opay/pay/R$string;->payment_verify_close_tip:I

    .line 32
    .line 33
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget-object p2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 38
    .line 39
    invoke-virtual {p2}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const/16 v8, 0x20

    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v2, 0x1

    .line 47
    const-string v5, "C10103"

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    move-object v1, p1

    .line 51
    invoke-direct/range {v1 .. v9}, Lteam/opay/pay/account/verify/VerifyExitEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lteam/opay/pay/account/verify/VerifyManager;->X(Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p3, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 59
    .line 60
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lteam/opay/pay/account/verify/ValidationResponse;

    .line 65
    .line 66
    invoke-virtual {p3, v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->I0(Lteam/opay/pay/account/verify/ValidationResponse;)V

    .line 67
    .line 68
    .line 69
    iget-object p3, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 70
    .line 71
    invoke-virtual {p3}, Lteam/opay/pay/account/verify/VerifyViewModel;->j0()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lteam/opay/pay/account/verify/ValidationResponse;

    .line 83
    .line 84
    new-instance p2, Lwqf;

    .line 85
    .line 86
    invoke-direct {p2, p4}, Lwqf;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifyManager;->h0(Lteam/opay/pay/account/verify/ValidationResponse;Lkotlin/jvm/functions/Function1;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method

.method public final a0()V
    .locals 15

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Lx7b;->a:Lx7b;

    .line 4
    .line 5
    iget-object v3, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 6
    .line 7
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "modify_type"

    .line 12
    .line 13
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 18
    .line 19
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v5, "modify_from"

    .line 24
    .line 25
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget v5, p0, Lteam/opay/pay/account/verify/VerifyManager;->e:I

    .line 30
    .line 31
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const-string v6, "pool_size"

    .line 36
    .line 37
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget-object v6, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 42
    .line 43
    invoke-virtual {v6}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const/4 v7, 0x0

    .line 48
    if-eqz v6, :cond_0

    .line 49
    .line 50
    invoke-virtual {v6}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-object v6, v7

    .line 56
    :goto_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    const-string v8, "valChainId"

    .line 61
    .line 62
    invoke-static {v8, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    const/4 v8, 0x4

    .line 67
    new-array v8, v8, [Lkotlin/Pair;

    .line 68
    .line 69
    aput-object v3, v8, v1

    .line 70
    .line 71
    aput-object v4, v8, v0

    .line 72
    .line 73
    const/4 v3, 0x2

    .line 74
    aput-object v5, v8, v3

    .line 75
    .line 76
    const/4 v3, 0x3

    .line 77
    aput-object v6, v8, v3

    .line 78
    .line 79
    const-string v3, "verify_pool_finish"

    .line 80
    .line 81
    invoke-virtual {v2, v3, v8}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 85
    .line 86
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 91
    .line 92
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyViewModel;->h0()Lteam/opay/pay/account/verify/ValidationResponse;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/ValidationResponse;->getRefreshToken()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    move-object v2, v7

    .line 104
    :goto_1
    const-string v3, ""

    .line 105
    .line 106
    if-nez v2, :cond_2

    .line 107
    .line 108
    move-object v10, v3

    .line 109
    goto :goto_2

    .line 110
    :cond_2
    move-object v10, v2

    .line 111
    :goto_2
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 112
    .line 113
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 118
    .line 119
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    if-eqz v2, :cond_3

    .line 124
    .line 125
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getSecurityId()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    goto :goto_3

    .line 130
    :cond_3
    move-object v2, v7

    .line 131
    :goto_3
    if-nez v2, :cond_4

    .line 132
    .line 133
    move-object v13, v3

    .line 134
    goto :goto_4

    .line 135
    :cond_4
    move-object v13, v2

    .line 136
    :goto_4
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 137
    .line 138
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    if-eqz v2, :cond_5

    .line 143
    .line 144
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    :cond_5
    if-nez v7, :cond_6

    .line 149
    .line 150
    move-object v12, v3

    .line 151
    goto :goto_5

    .line 152
    :cond_6
    move-object v12, v7

    .line 153
    :goto_5
    iget v2, p0, Lteam/opay/pay/account/verify/VerifyManager;->e:I

    .line 154
    .line 155
    if-nez v2, :cond_7

    .line 156
    .line 157
    const/4 v14, 0x0

    .line 158
    goto :goto_6

    .line 159
    :cond_7
    const/4 v14, 0x1

    .line 160
    :goto_6
    new-instance v2, Lteam/opay/pay/account/verify/VerifyEvent;

    .line 161
    .line 162
    move-object v8, v2

    .line 163
    invoke-direct/range {v8 .. v14}, Lteam/opay/pay/account/verify/VerifyEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->l(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 174
    .line 175
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 176
    .line 177
    const/4 v4, 0x4

    .line 178
    const/4 v5, 0x0

    .line 179
    const-string v1, "verify_pool_result_key"

    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/util/FlowBus;->i(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 186
    .line 187
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->ACCOUNT_UNFREEZE:Lteam/opay/pay/account/verify/ModifyType;

    .line 192
    .line 193
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_8

    .line 202
    .line 203
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyManager;->o()V

    .line 204
    .line 205
    .line 206
    goto :goto_7

    .line 207
    :cond_8
    const/4 v5, 0x4

    .line 208
    const/4 v6, 0x0

    .line 209
    const-string v2, "success"

    .line 210
    .line 211
    const/4 v3, 0x1

    .line 212
    const/4 v4, 0x0

    .line 213
    move-object v1, p0

    .line 214
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/account/verify/VerifyManager;->n(Lteam/opay/pay/account/verify/VerifyManager;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :goto_7
    return-void
.end method

.method public final b0(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/account/verify/VerifyStepItem;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_4

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v3, v1

    .line 24
    check-cast v3, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 25
    .line 26
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    sget-object v4, Lteam/opay/pay/account/verify/ValidationType;->MTN:Lteam/opay/pay/account/verify/ValidationType;

    .line 31
    .line 32
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object v1, v2

    .line 44
    :goto_0
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    move-object v1, v0

    .line 61
    check-cast v1, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 62
    .line 63
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sget-object v3, Lteam/opay/pay/account/verify/ValidationType;->OTP:Lteam/opay/pay/account/verify/ValidationType;

    .line 68
    .line 69
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    move-object v2, v0

    .line 80
    :cond_3
    if-eqz v2, :cond_4

    .line 81
    .line 82
    const/4 p1, 0x1

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const/4 p1, 0x0

    .line 85
    :goto_1
    return p1
.end method

.method public final c0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->e:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iput v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->e:I

    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->h0()Lteam/opay/pay/account/verify/ValidationResponse;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/ValidationResponse;->getVerifyStepList()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyManager;->e0()V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyManager;->d0()V

    .line 40
    .line 41
    .line 42
    :goto_1
    return-void
.end method

.method public final d0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->i0()Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 8
    .line 9
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->J()Lteam/opay/pay/account/verify/VerifyStep;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 14
    .line 15
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValStepInfos()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyStep;->b()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lteam/opay/pay/account/verify/VerifyPoolItem;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 39
    :goto_0
    const/4 v3, 0x0

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyPoolItem;->getValCount()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v4, 0x0

    .line 48
    :goto_1
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyPoolItem;->getValTypesExtraTypes()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/4 v5, 0x0

    .line 62
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v7, "setNextStep step = "

    .line 68
    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v7, ", outItem = "

    .line 76
    .line 77
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, ", valCount = "

    .line 84
    .line 85
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, ", size = "

    .line 92
    .line 93
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyStep;->a()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    if-lt v2, v4, :cond_3

    .line 106
    .line 107
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 108
    .line 109
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyViewModel;->j0()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 114
    .line 115
    .line 116
    new-instance v2, Lteam/opay/pay/account/verify/VerifyStep;

    .line 117
    .line 118
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyStep;->b()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 123
    .line 124
    invoke-direct {v2, v1, v3}, Lteam/opay/pay/account/verify/VerifyStep;-><init>(II)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_3
    new-instance v2, Lteam/opay/pay/account/verify/VerifyStep;

    .line 132
    .line 133
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyStep;->b()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyStep;->a()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    .line 142
    .line 143
    invoke-direct {v2, v3, v1}, Lteam/opay/pay/account/verify/VerifyStep;-><init>(II)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :goto_3
    return-void
.end method

.method public final e0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyManager;->a0()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-static {}, Lteam/opay/pay/account/verify/ValidationType;->getEntries()Lwo5;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    move-object v4, v3

    .line 37
    check-cast v4, Lteam/opay/pay/account/verify/ValidationType;

    .line 38
    .line 39
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move-object v3, v1

    .line 51
    :goto_1
    check-cast v3, Lteam/opay/pay/account/verify/ValidationType;

    .line 52
    .line 53
    sget-object v2, Lteam/opay/pay/account/verify/ValidationType;->OTP:Lteam/opay/pay/account/verify/ValidationType;

    .line 54
    .line 55
    if-ne v3, v2, :cond_4

    .line 56
    .line 57
    sget-object v2, Lteam/opay/pay/account/verify/ValidationType;->MTN:Lteam/opay/pay/account/verify/ValidationType;

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Lteam/opay/pay/account/verify/VerifyManager;->q(Lteam/opay/pay/account/verify/ValidationType;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_4

    .line 64
    .line 65
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 66
    .line 67
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->g0()Landroidx/lifecycle/MutableLiveData;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_4
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 76
    .line 77
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyViewModel;->g0()Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {}, Lteam/opay/pay/account/verify/ValidationType;->getEntries()Lwo5;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_6

    .line 94
    .line 95
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    move-object v5, v4

    .line 100
    check-cast v5, Lteam/opay/pay/account/verify/ValidationType;

    .line 101
    .line 102
    invoke-virtual {v5}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_5

    .line 111
    .line 112
    move-object v1, v4

    .line 113
    :cond_6
    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final f0(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    if-nez p1, :cond_6

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getVerifyStepList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v2

    .line 23
    :goto_0
    if-eqz v0, :cond_4

    .line 24
    .line 25
    new-instance v3, Ljava/util/ArrayList;

    .line 26
    .line 27
    const/16 v4, 0xa

    .line 28
    .line 29
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_5

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 51
    .line 52
    invoke-static {}, Lteam/opay/pay/account/verify/ValidationType;->getEntries()Lwo5;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_3

    .line 65
    .line 66
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    move-object v7, v6

    .line 71
    check-cast v7, Lteam/opay/pay/account/verify/ValidationType;

    .line 72
    .line 73
    invoke-virtual {v7}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    if-nez v8, :cond_2

    .line 82
    .line 83
    const-string v8, ""

    .line 84
    .line 85
    :cond_2
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    move-object v6, v2

    .line 93
    :goto_2
    check-cast v6, Lteam/opay/pay/account/verify/ValidationType;

    .line 94
    .line 95
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    move-object v3, v2

    .line 100
    :cond_5
    invoke-virtual {p0, v3}, Lteam/opay/pay/account/verify/VerifyManager;->N(Ljava/util/List;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    goto :goto_3

    .line 105
    :cond_6
    invoke-virtual {p0, v1, v1}, Lteam/opay/pay/account/verify/VerifyManager;->J(ZZ)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lteam/opay/pay/account/verify/VerifyManager;->N(Ljava/util/List;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :goto_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_8

    .line 122
    .line 123
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    move-object v5, v4

    .line 128
    check-cast v5, Lteam/opay/pay/account/verify/VerifyMethods;

    .line 129
    .line 130
    invoke-virtual {v5}, Lteam/opay/pay/account/verify/VerifyMethods;->e()Lteam/opay/pay/account/verify/ValidationType;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    sget-object v6, Lteam/opay/pay/account/verify/ValidationType;->MTN:Lteam/opay/pay/account/verify/ValidationType;

    .line 135
    .line 136
    if-ne v5, v6, :cond_7

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_8
    move-object v4, v2

    .line 140
    :goto_4
    check-cast v4, Lteam/opay/pay/account/verify/VerifyMethods;

    .line 141
    .line 142
    if-eqz v4, :cond_9

    .line 143
    .line 144
    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    const/4 v5, 0x1

    .line 152
    if-ne v3, v5, :cond_f

    .line 153
    .line 154
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Lteam/opay/pay/account/verify/VerifyMethods;

    .line 159
    .line 160
    iget-boolean v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->b:Z

    .line 161
    .line 162
    if-eqz v0, :cond_d

    .line 163
    .line 164
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 165
    .line 166
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-eqz v0, :cond_c

    .line 171
    .line 172
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getVerifyStepList()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-eqz v0, :cond_c

    .line 177
    .line 178
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_b

    .line 187
    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    move-object v3, v1

    .line 193
    check-cast v3, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 194
    .line 195
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyMethods;->e()Lteam/opay/pay/account/verify/ValidationType;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-virtual {v5}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-eqz v3, :cond_a

    .line 212
    .line 213
    move-object v2, v1

    .line 214
    :cond_b
    check-cast v2, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 215
    .line 216
    :cond_c
    iput-object v2, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 217
    .line 218
    :cond_d
    if-eqz v4, :cond_e

    .line 219
    .line 220
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyMethods;->e()Lteam/opay/pay/account/verify/ValidationType;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->OTP:Lteam/opay/pay/account/verify/ValidationType;

    .line 225
    .line 226
    if-ne v0, v1, :cond_e

    .line 227
    .line 228
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 229
    .line 230
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->g0()Landroidx/lifecycle/MutableLiveData;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->MTN:Lteam/opay/pay/account/verify/ValidationType;

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_e
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 241
    .line 242
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->g0()Landroidx/lifecycle/MutableLiveData;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyMethods;->e()Lteam/opay/pay/account/verify/ValidationType;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :goto_5
    return-void

    .line 254
    :cond_f
    sget-object v1, Ljd6;->a:Ljd6;

    .line 255
    .line 256
    iget-object v3, p0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 257
    .line 258
    if-nez v3, :cond_10

    .line 259
    .line 260
    const-string v3, "activity"

    .line 261
    .line 262
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_10
    move-object v2, v3

    .line 267
    :goto_6
    sget-object v3, Lteam/opay/pay/account/verify/VerifyFirstChooseFragment;->y:Lteam/opay/pay/account/verify/VerifyFirstChooseFragment$Companion;

    .line 268
    .line 269
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/VerifyFirstChooseFragment$Companion;->a()Lteam/opay/pay/account/verify/VerifyFirstChooseFragment;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    if-eqz p1, :cond_11

    .line 274
    .line 275
    const-string v4, "multi_select"

    .line 276
    .line 277
    invoke-virtual {v3, v4}, Lteam/opay/pay/account/verify/VerifyFirstChooseFragment;->y0(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :cond_11
    invoke-virtual {v3}, Lteam/opay/pay/account/verify/VerifyFirstChooseFragment;->v0()Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 285
    .line 286
    .line 287
    new-instance v0, Lqqf;

    .line 288
    .line 289
    invoke-direct {v0, p0, p1}, Lqqf;-><init>(Lteam/opay/pay/account/verify/VerifyManager;Z)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3, v0}, Lteam/opay/pay/account/verify/VerifyFirstChooseFragment;->x0(Lkotlin/jvm/functions/Function2;)V

    .line 293
    .line 294
    .line 295
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 296
    .line 297
    invoke-virtual {v1, v2, v3}, Ljd6;->c(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;)V

    .line 298
    .line 299
    .line 300
    return-void
.end method

.method public final h0(Lteam/opay/pay/account/verify/ValidationResponse;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/ValidationResponse;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/ValidationResponse;->getValStatus()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyManager;->c0()V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    if-eqz p2, :cond_3

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/ValidationResponse;->getFailMsg()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    if-nez p1, :cond_2

    .line 25
    .line 26
    const-string p1, ""

    .line 27
    .line 28
    :cond_2
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_3
    :goto_1
    return-void
.end method

.method public final i0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getVerifyStepList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getOptionalItemsList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->T0(Ljava/util/Collection;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    :cond_2
    const/4 v2, 0x0

    .line 42
    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getOptionalItemsList()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p0, v1}, Lteam/opay/pay/account/verify/VerifyManager;->b0(Ljava/util/List;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_4

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Lteam/opay/pay/account/verify/VerifyManager;->f0(Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    :goto_0
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 70
    .line 71
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifyManager;->e0()V

    .line 72
    .line 73
    .line 74
    :cond_5
    :goto_1
    return-void
.end method

.method public final m(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "errorMsg"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 17
    .line 18
    invoke-virtual {v2}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "modifyType"

    .line 23
    .line 24
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v2, "isSuccess"

    .line 28
    .line 29
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 36
    .line 37
    invoke-virtual {p2}, Lteam/opay/pay/account/verify/VerifyViewModel;->h0()Lteam/opay/pay/account/verify/ValidationResponse;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const/4 p3, 0x0

    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    invoke-virtual {p2}, Lteam/opay/pay/account/verify/ValidationResponse;->getRefreshToken()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object p2, p3

    .line 50
    :goto_0
    const-string v0, ""

    .line 51
    .line 52
    if-nez p2, :cond_1

    .line 53
    .line 54
    move-object p2, v0

    .line 55
    :cond_1
    const-string v2, "refreshToken"

    .line 56
    .line 57
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 61
    .line 62
    invoke-virtual {p2}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    const-string v2, "from"

    .line 67
    .line 68
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    const-string p2, "accountStatus"

    .line 72
    .line 73
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 77
    .line 78
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getSecurityId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move-object p1, p3

    .line 90
    :goto_1
    if-nez p1, :cond_3

    .line 91
    .line 92
    move-object p1, v0

    .line 93
    :cond_3
    const-string p2, "securityId"

    .line 94
    .line 95
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 99
    .line 100
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    goto :goto_2

    .line 111
    :cond_4
    move-object p1, p3

    .line 112
    :goto_2
    if-nez p1, :cond_5

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    move-object v0, p1

    .line 116
    :goto_3
    const-string p1, "valChainId"

    .line 117
    .line 118
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    new-instance p1, Landroid/content/Intent;

    .line 122
    .line 123
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string p2, "data"

    .line 127
    .line 128
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const-string p2, "putExtra(...)"

    .line 137
    .line 138
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object p2, p0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 142
    .line 143
    const-string v0, "activity"

    .line 144
    .line 145
    if-nez p2, :cond_6

    .line 146
    .line 147
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    move-object p2, p3

    .line 151
    :cond_6
    const/4 v1, -0x1

    .line 152
    invoke-virtual {p2, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 156
    .line 157
    if-nez p1, :cond_7

    .line 158
    .line 159
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_7
    move-object p3, p1

    .line 164
    :goto_4
    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public final o()V
    .locals 11

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 2
    .line 3
    new-instance v9, Lteam/opay/pay/account/verify/VerifyCallbackRequest;

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v10, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValChainId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v1, v10

    .line 18
    :goto_0
    const-string v2, ""

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    move-object v3, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object v3, v1

    .line 25
    :goto_1
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 26
    .line 27
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getSecurityId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move-object v1, v10

    .line 39
    :goto_2
    if-nez v1, :cond_3

    .line 40
    .line 41
    move-object v4, v2

    .line 42
    goto :goto_3

    .line 43
    :cond_3
    move-object v4, v1

    .line 44
    :goto_3
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 45
    .line 46
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->h0()Lteam/opay/pay/account/verify/ValidationResponse;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/ValidationResponse;->getRefreshToken()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_4

    .line 57
    :cond_4
    move-object v1, v10

    .line 58
    :goto_4
    if-nez v1, :cond_5

    .line 59
    .line 60
    move-object v5, v2

    .line 61
    goto :goto_5

    .line 62
    :cond_5
    move-object v5, v1

    .line 63
    :goto_5
    const/16 v7, 0x10

    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    const-string v2, "ACCOUNT_UNFREEZE"

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    move-object v1, v9

    .line 70
    invoke-direct/range {v1 .. v8}, Lteam/opay/pay/account/verify/VerifyCallbackRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 74
    .line 75
    if-nez v1, :cond_6

    .line 76
    .line 77
    const-string v1, "activity"

    .line 78
    .line 79
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_6

    .line 83
    :cond_6
    move-object v10, v1

    .line 84
    :goto_6
    new-instance v1, Lnqf;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lnqf;-><init>(Lteam/opay/pay/account/verify/VerifyManager;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v9, v10, v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->S0(Lteam/opay/pay/account/verify/VerifyCallbackRequest;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function1;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final q(Lteam/opay/pay/account/verify/ValidationType;)Z
    .locals 7
    .param p1    # Lteam/opay/pay/account/verify/ValidationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "validationType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->b:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v0, :cond_8

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v3

    .line 23
    :goto_0
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_c

    .line 32
    .line 33
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getDegradeNodesList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    move-object v5, v4

    .line 58
    check-cast v5, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 59
    .line 60
    invoke-virtual {v5}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-object v4, v3

    .line 76
    :goto_1
    check-cast v4, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    move-object v4, v3

    .line 80
    :goto_2
    if-nez v4, :cond_c

    .line 81
    .line 82
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->d:Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 83
    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyStepItem;->getOptionalItemsList()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_5

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    move-object v5, v4

    .line 107
    check-cast v5, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 108
    .line 109
    invoke-virtual {v5}, Lteam/opay/pay/account/verify/VerifyStepItem;->getValType()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/ValidationType;->getValue()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_4

    .line 122
    .line 123
    move-object v3, v4

    .line 124
    :cond_5
    check-cast v3, Lteam/opay/pay/account/verify/VerifyStepItem;

    .line 125
    .line 126
    :cond_6
    if-eqz v3, :cond_7

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_7
    const/4 v1, 0x0

    .line 130
    goto :goto_3

    .line 131
    :cond_8
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 132
    .line 133
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->m0()Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_b

    .line 138
    .line 139
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolResponse;->getValStepInfos()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_b

    .line 144
    .line 145
    iget-object v4, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 146
    .line 147
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/VerifyViewModel;->J()Lteam/opay/pay/account/verify/VerifyStep;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v4}, Lteam/opay/pay/account/verify/VerifyStep;->b()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Lteam/opay/pay/account/verify/VerifyPoolItem;

    .line 160
    .line 161
    if-eqz v0, :cond_b

    .line 162
    .line 163
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyPoolItem;->getValTypesExtraTypes()Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    if-eqz v0, :cond_b

    .line 168
    .line 169
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_a

    .line 178
    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    move-object v5, v4

    .line 184
    check-cast v5, Lteam/opay/pay/account/verify/ValTypesExtraTypes;

    .line 185
    .line 186
    invoke-virtual {v5}, Lteam/opay/pay/account/verify/ValTypesExtraTypes;->getValidationType()Lteam/opay/pay/account/verify/ValidationType;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    if-ne v5, p1, :cond_9

    .line 191
    .line 192
    move-object v3, v4

    .line 193
    :cond_a
    check-cast v3, Lteam/opay/pay/account/verify/ValTypesExtraTypes;

    .line 194
    .line 195
    :cond_b
    if-eqz v3, :cond_7

    .line 196
    .line 197
    :cond_c
    :goto_3
    return v1
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/pay/account/verify/c;->a:Lteam/opay/pay/account/verify/c;

    .line 5
    .line 6
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/c;->h()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v0, v2}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v1, "modify_type"

    .line 48
    .line 49
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p1}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 58
    .line 59
    invoke-virtual {v0}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, "modify_from"

    .line 64
    .line 65
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {p1, v0}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v0, "error_code"

    .line 74
    .line 75
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-static {p1, p2}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string p2, "error_msg"

    .line 84
    .line 85
    invoke-static {p2, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {p1, p2}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    sget-object p2, Lx7b;->a:Lx7b;

    .line 94
    .line 95
    array-length p3, p1

    .line 96
    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, [Lkotlin/Pair;

    .line 101
    .line 102
    const-string p3, "verify_pool_error"

    .line 103
    .line 104
    invoke-virtual {p2, p3, p1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 11

    .line 1
    sget-object v0, Lteam/opay/pay/settings/TipsDialogFragment;->u:Lteam/opay/pay/settings/TipsDialogFragment$Companion;

    .line 2
    .line 3
    sget v1, Lteam/opay/pay/R$string;->osdk_sorry:I

    .line 4
    .line 5
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget v2, Lteam/opay/pay/R$string;->osdk_unfreeze_tip:I

    .line 10
    .line 11
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget v3, Lteam/opay/pay/R$string;->confirm:I

    .line 16
    .line 17
    invoke-static {v3}, Ljmf;->k(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    sget v4, Lteam/opay/pay/R$string;->cancel:I

    .line 22
    .line 23
    invoke-static {v4}, Ljmf;->k(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    sget v5, Lteam/opay/pay/R$mipmap;->osdk_unfreeze_lock:I

    .line 28
    .line 29
    const/16 v9, 0xe0

    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    invoke-static/range {v0 .. v10}, Lteam/opay/pay/settings/TipsDialogFragment$Companion;->b(Lteam/opay/pay/settings/TipsDialogFragment$Companion;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IIZZILjava/lang/Object;)Lteam/opay/pay/settings/TipsDialogFragment;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Loqf;

    .line 40
    .line 41
    invoke-direct {v1, p0, p1}, Loqf;-><init>(Lteam/opay/pay/account/verify/VerifyManager;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lteam/opay/pay/settings/TipsDialogFragment;->Z(Lkotlin/jvm/functions/Function0;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lpqf;

    .line 48
    .line 49
    invoke-direct {v1, p0, p1}, Lpqf;-><init>(Lteam/opay/pay/account/verify/VerifyManager;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lteam/opay/pay/settings/TipsDialogFragment;->Y(Lkotlin/jvm/functions/Function0;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 56
    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    const-string p1, "activity"

    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    :cond_0
    invoke-static {p1, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lteam/opay/pay/account/verify/VerifyExitEvent;

    .line 4
    .line 5
    iget-object v1, v0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 6
    .line 7
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v11, ""

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    move-object v3, v11

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v3, v1

    .line 18
    :goto_0
    iget-object v1, v0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 19
    .line 20
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const/16 v8, 0x20

    .line 25
    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v2, 0x1

    .line 28
    const-string v5, "C10100"

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v1, v10

    .line 32
    move-object/from16 v4, p1

    .line 33
    .line 34
    invoke-direct/range {v1 .. v9}, Lteam/opay/pay/account/verify/VerifyExitEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    sget-object v12, Lteam/opay/pay/settings/TipsDialogFragment;->u:Lteam/opay/pay/settings/TipsDialogFragment$Companion;

    .line 38
    .line 39
    sget v1, Lteam/opay/pay/R$string;->daily_limit_title:I

    .line 40
    .line 41
    sget-object v2, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 42
    .line 43
    invoke-virtual {v2}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lteam/opay/core/account/AccountInfoManager;->v()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object v11, v2

    .line 55
    :goto_1
    const/4 v2, 0x1

    .line 56
    new-array v2, v2, [Ljava/lang/Object;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    aput-object v11, v2, v3

    .line 60
    .line 61
    invoke-static {v1, v2}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    sget v1, Lteam/opay/pay/R$string;->cancel:I

    .line 66
    .line 67
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v16

    .line 71
    sget v1, Lteam/opay/pay/R$string;->daily_limit_upgrade:I

    .line 72
    .line 73
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v15

    .line 77
    const/16 v21, 0xf0

    .line 78
    .line 79
    const/16 v22, 0x0

    .line 80
    .line 81
    const/16 v17, 0x0

    .line 82
    .line 83
    const/16 v18, 0x0

    .line 84
    .line 85
    const/16 v19, 0x0

    .line 86
    .line 87
    const/16 v20, 0x0

    .line 88
    .line 89
    move-object/from16 v14, p1

    .line 90
    .line 91
    invoke-static/range {v12 .. v22}, Lteam/opay/pay/settings/TipsDialogFragment$Companion;->b(Lteam/opay/pay/settings/TipsDialogFragment$Companion;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IIZZILjava/lang/Object;)Lteam/opay/pay/settings/TipsDialogFragment;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    new-instance v2, Luqf;

    .line 96
    .line 97
    invoke-direct {v2, v0, v10}, Luqf;-><init>(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lteam/opay/pay/settings/TipsDialogFragment;->Y(Lkotlin/jvm/functions/Function0;)V

    .line 101
    .line 102
    .line 103
    new-instance v2, Lvqf;

    .line 104
    .line 105
    invoke-direct {v2, v0, v10}, Lvqf;-><init>(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Lteam/opay/pay/settings/TipsDialogFragment;->Z(Lkotlin/jvm/functions/Function0;)V

    .line 109
    .line 110
    .line 111
    iget-object v2, v0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 112
    .line 113
    if-nez v2, :cond_2

    .line 114
    .line 115
    const-string v2, "activity"

    .line 116
    .line 117
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/4 v2, 0x0

    .line 121
    :cond_2
    invoke-static {v2, v1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lteam/opay/pay/account/verify/VerifyExitEvent;

    .line 4
    .line 5
    iget-object v1, v0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 6
    .line 7
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->P()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    :cond_0
    move-object v3, v1

    .line 16
    iget-object v1, v0, Lteam/opay/pay/account/verify/VerifyManager;->a:Lteam/opay/pay/account/verify/VerifyViewModel;

    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/pay/account/verify/VerifyViewModel;->M()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    const/16 v8, 0x20

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    const-string v5, "C10101"

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v1, v10

    .line 30
    move-object/from16 v4, p1

    .line 31
    .line 32
    invoke-direct/range {v1 .. v9}, Lteam/opay/pay/account/verify/VerifyExitEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    sget-object v11, Lteam/opay/pay/settings/TipsDialogFragment;->u:Lteam/opay/pay/settings/TipsDialogFragment$Companion;

    .line 36
    .line 37
    sget v1, Lteam/opay/pay/R$string;->confirm:I

    .line 38
    .line 39
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v15

    .line 43
    sget v1, Lteam/opay/pay/R$string;->opay_hotline_prompt:I

    .line 44
    .line 45
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v14

    .line 49
    const/16 v20, 0xf1

    .line 50
    .line 51
    const/16 v21, 0x0

    .line 52
    .line 53
    const/4 v12, 0x0

    .line 54
    const/16 v16, 0x0

    .line 55
    .line 56
    const/16 v17, 0x0

    .line 57
    .line 58
    const/16 v18, 0x0

    .line 59
    .line 60
    const/16 v19, 0x0

    .line 61
    .line 62
    move-object/from16 v13, p1

    .line 63
    .line 64
    invoke-static/range {v11 .. v21}, Lteam/opay/pay/settings/TipsDialogFragment$Companion;->b(Lteam/opay/pay/settings/TipsDialogFragment$Companion;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IIZZILjava/lang/Object;)Lteam/opay/pay/settings/TipsDialogFragment;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-instance v2, Lsqf;

    .line 69
    .line 70
    invoke-direct {v2, v0, v10}, Lsqf;-><init>(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lteam/opay/pay/settings/TipsDialogFragment;->Y(Lkotlin/jvm/functions/Function0;)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Ltqf;

    .line 77
    .line 78
    invoke-direct {v2, v0, v10}, Ltqf;-><init>(Lteam/opay/pay/account/verify/VerifyManager;Lteam/opay/pay/account/verify/VerifyExitEvent;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lteam/opay/pay/settings/TipsDialogFragment;->Z(Lkotlin/jvm/functions/Function0;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, v0, Lteam/opay/pay/account/verify/VerifyManager;->c:Landroidx/appcompat/app/AppCompatActivity;

    .line 85
    .line 86
    if-nez v2, :cond_1

    .line 87
    .line 88
    const-string v2, "activity"

    .line 89
    .line 90
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    :cond_1
    invoke-static {v2, v1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
