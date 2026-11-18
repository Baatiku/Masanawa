.class public final Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;
.super Ljava/lang/Object;
.source "AmountInputStatusManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/android/views/AmountInputStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0013\u0010\u000fJ\u0015\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J!\u0010\u001c\u001a\u00020\u00002\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a0\u0018\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0015\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001f\u0010\u000bJ\u0015\u0010 \u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0008\u00a2\u0006\u0004\u0008 \u0010\u000bJ\u0015\u0010#\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$J\u0015\u0010\'\u001a\u00020\u00002\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010+\u001a\u00020\u00002\u0008\u0010*\u001a\u0004\u0018\u00010)\u00a2\u0006\u0004\u0008+\u0010,J\r\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u00080\u00101R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u00102R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00103R\u0018\u00105\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u00104R\u0018\u00106\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u00104R\u0018\u00107\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u00104R\u0018\u00109\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u00108R$\u0010;\u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010:R\u0018\u0010\"\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010<R\u0018\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010=R\u0018\u0010?\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010>R\u0018\u0010@\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u00103R\u0018\u0010A\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u00103\u00a8\u0006B"
    }
    d2 = {
        "Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;",
        "inputText",
        "f",
        "(Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;",
        "Landroid/widget/TextView;",
        "infoText",
        "e",
        "(Landroid/widget/TextView;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "min",
        "j",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;",
        "max",
        "i",
        "amount",
        "h",
        "",
        "type",
        "k",
        "(Ljava/lang/String;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;",
        "Lkotlin/Function1;",
        "",
        "",
        "callback",
        "g",
        "(Lkotlin/jvm/functions/Function1;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;",
        "textView",
        "m",
        "n",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "d",
        "(Landroidx/fragment/app/Fragment;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "c",
        "(Landroidx/fragment/app/FragmentActivity;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;",
        "Lteam/opay/core/api/graphql/StampDutyInfo;",
        "info",
        "l",
        "(Lteam/opay/core/api/graphql/StampDutyInfo;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;",
        "Lteam/opay/pay/android/views/AmountInputStatusManager;",
        "a",
        "()Lteam/opay/pay/android/views/AmountInputStatusManager;",
        "b",
        "()Z",
        "Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;",
        "Landroid/widget/TextView;",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "serviceMin",
        "serviceMax",
        "remainingTransferAmount",
        "Ljava/lang/String;",
        "serviceType",
        "Lkotlin/jvm/functions/Function1;",
        "onAmountValidChange",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/fragment/app/FragmentActivity;",
        "Lteam/opay/core/api/graphql/StampDutyInfo;",
        "stampDutyInfo",
        "stampDutyInfoInfoTextView",
        "stampDutyInfoValueTextView",
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
.field public a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Landroidx/fragment/app/FragmentActivity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lteam/opay/core/api/graphql/StampDutyInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lteam/opay/pay/android/views/AmountInputStatusManager;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->h:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->i:Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "Exactly one of Fragment or Activity must be provided"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->b()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->j:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 25
    .line 26
    :goto_1
    move-object v11, v0

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :goto_2
    new-instance v0, Lteam/opay/pay/android/views/AmountInputStatusManager;

    .line 31
    .line 32
    iget-object v2, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 33
    .line 34
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->b:Landroid/widget/TextView;

    .line 38
    .line 39
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v4, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 43
    .line 44
    iget-object v5, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->d:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 45
    .line 46
    iget-object v6, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 47
    .line 48
    iget-object v7, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->f:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v8, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->g:Lkotlin/jvm/functions/Function1;

    .line 54
    .line 55
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v9, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->h:Landroidx/fragment/app/Fragment;

    .line 59
    .line 60
    iget-object v10, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->i:Landroidx/fragment/app/FragmentActivity;

    .line 61
    .line 62
    iget-object v12, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->k:Landroid/widget/TextView;

    .line 63
    .line 64
    iget-object v13, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->l:Landroid/widget/TextView;

    .line 65
    .line 66
    const/4 v14, 0x0

    .line 67
    move-object v1, v0

    .line 68
    invoke-direct/range {v1 .. v14}, Lteam/opay/pay/android/views/AmountInputStatusManager;-><init>(Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;Landroid/widget/TextView;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/api/graphql/StampDutyInfo;Landroid/widget/TextView;Landroid/widget/TextView;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    .line 70
    .line 71
    return-object v0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->j:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/StampDutyInfo;->getStampDutyFlag()Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->j:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/StampDutyInfo;->getStampDutyMinAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->j:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/StampDutyInfo;->getStampDutyMaxAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->j:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/StampDutyInfo;->getStampDutyMaxAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->j:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 55
    .line 56
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/StampDutyInfo;->getStampDutyMinAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-lez v0, :cond_0

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0
.end method

.method public final c(Landroidx/fragment/app/FragmentActivity;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->i:Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->h:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    return-object p0
.end method

.method public final d(Landroidx/fragment/app/Fragment;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->h:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->i:Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    return-object p0
.end method

.method public final e(Landroid/widget/TextView;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "infoText"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->b:Landroid/widget/TextView;

    .line 7
    .line 8
    return-object p0
.end method

.method public final f(Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;
    .locals 1
    .param p1    # Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "inputText"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 7
    .line 8
    return-object p0
.end method

.method public final g(Lkotlin/jvm/functions/Function1;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)",
            "Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->g:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-object p0
.end method

.method public final h(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;
    .locals 0
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object p0
.end method

.method public final i(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;
    .locals 0
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->d:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object p0
.end method

.method public final j(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;
    .locals 0
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->f:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final l(Lteam/opay/core/api/graphql/StampDutyInfo;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;
    .locals 0
    .param p1    # Lteam/opay/core/api/graphql/StampDutyInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->j:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final m(Landroid/widget/TextView;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "textView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->k:Landroid/widget/TextView;

    .line 7
    .line 8
    return-object p0
.end method

.method public final n(Landroid/widget/TextView;)Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "textView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;->l:Landroid/widget/TextView;

    .line 7
    .line 8
    return-object p0
.end method
