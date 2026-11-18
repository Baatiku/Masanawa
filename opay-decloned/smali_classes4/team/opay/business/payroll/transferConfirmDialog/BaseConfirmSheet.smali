.class public abstract Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;
.super Lteam/opay/core/common/base/BaseSheetFragment;
.source "BaseConfirmSheet.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0006H\u0004\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0004\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0006H\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0004\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\"\u0010\u001a\u001a\u00020\u00148\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0012\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001e\u001a\u00020\u00148\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0012\u001a\u0004\u0008\u001c\u0010\u0017\"\u0004\u0008\u001d\u0010\u0019R$\u0010&\u001a\u0004\u0018\u00010\u001f8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R$\u0010.\u001a\u0004\u0018\u00010\'8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R*\u00106\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010/8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u001a\u0010;\u001a\u00020\u00108\u0004X\u0084D\u00a2\u0006\u000c\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:R\u001a\u0010>\u001a\u00020\u00108\u0004X\u0084D\u00a2\u0006\u000c\n\u0004\u0008<\u00108\u001a\u0004\u0008=\u0010:R\"\u0010C\u001a\u00020\u00108&@&X\u00a6\u000e\u00a2\u0006\u0012\u0012\u0004\u0008B\u0010\u0003\u001a\u0004\u0008?\u0010:\"\u0004\u0008@\u0010A\u00a8\u0006D"
    }
    d2 = {
        "Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;",
        "Lteam/opay/core/common/base/BaseSheetFragment;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "V",
        "T",
        "U",
        "",
        "amount",
        "Z",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "",
        "p",
        "M",
        "()Z",
        "setSupportCancelable",
        "(Z)V",
        "supportCancelable",
        "q",
        "getSupportBack",
        "setSupportBack",
        "supportBack",
        "Lteam/opay/business/payroll/api/BeneficiaryInfo;",
        "r",
        "Lteam/opay/business/payroll/api/BeneficiaryInfo;",
        "b0",
        "()Lteam/opay/business/payroll/api/BeneficiaryInfo;",
        "setTransferInfo",
        "(Lteam/opay/business/payroll/api/BeneficiaryInfo;)V",
        "transferInfo",
        "Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;",
        "s",
        "Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;",
        "W",
        "()Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;",
        "setConfirmInfo",
        "(Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;)V",
        "confirmInfo",
        "Lkotlin/Function0;",
        "t",
        "Lkotlin/jvm/functions/Function0;",
        "getOnPageResult",
        "()Lkotlin/jvm/functions/Function0;",
        "c0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onPageResult",
        "u",
        "Ljava/lang/String;",
        "Y",
        "()Ljava/lang/String;",
        "KEY_TRANSFER_INFO",
        "v",
        "X",
        "KEY_CONFIRM_INFO",
        "a0",
        "setNoticeType",
        "(Ljava/lang/String;)V",
        "getNoticeType$annotations",
        "noticeType",
        "business-payroll_release"
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
.field public p:Z

.field public q:Z

.field public r:Lteam/opay/business/payroll/api/BeneficiaryInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/core/common/base/BaseSheetFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->q:Z

    .line 6
    .line 7
    const-string v0, "transferInfo"

    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->u:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "confirmInfo"

    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->v:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public final T()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "dialogType"

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->a0()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    new-array v3, v3, [Lkotlin/Pair;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v2, v3, v4

    .line 22
    .line 23
    const-string v2, "transfer_reconfirm_pop_cancel"

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final U()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "dialogType"

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->a0()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    new-array v3, v3, [Lkotlin/Pair;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v2, v3, v4

    .line 22
    .line 23
    const-string v2, "transfer_reconfirm_pop_close"

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final V()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "dialogType"

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->a0()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    new-array v3, v3, [Lkotlin/Pair;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v2, v3, v4

    .line 22
    .line 23
    const-string v2, "transfer_reconfirm_pop_confirm"

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->t:Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final W()Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->s:Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 2
    .line 3
    return-object v0
.end method

.method public final X()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Y()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Z(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v5, 0x4

    .line 6
    const/4 v6, 0x0

    .line 7
    const-string v2, ","

    .line 8
    .line 9
    const-string v3, ""

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v1, p1

    .line 13
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    const-string p1, "."

    .line 18
    .line 19
    filled-new-array {p1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v8

    .line 23
    const/4 v11, 0x6

    .line 24
    const/4 v12, 0x0

    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v10, 0x0

    .line 27
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/text/StringsKt;->y(Ljava/lang/String;)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_9

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    const-wide/16 v3, 0x64

    .line 49
    .line 50
    cmp-long p1, v1, v3

    .line 51
    .line 52
    if-gez p1, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-wide/16 v3, 0x3e8

    .line 56
    .line 57
    cmp-long p1, v1, v3

    .line 58
    .line 59
    if-gez p1, :cond_2

    .line 60
    .line 61
    const-string v0, "Hundreds"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const-wide/16 v3, 0x2710

    .line 65
    .line 66
    cmp-long p1, v1, v3

    .line 67
    .line 68
    if-gez p1, :cond_3

    .line 69
    .line 70
    const-string v0, "Thousands"

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const-wide/32 v3, 0x186a0

    .line 74
    .line 75
    .line 76
    cmp-long p1, v1, v3

    .line 77
    .line 78
    if-gez p1, :cond_4

    .line 79
    .line 80
    const-string v0, "Tens of Thousands"

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const-wide/32 v3, 0xf4240

    .line 84
    .line 85
    .line 86
    cmp-long p1, v1, v3

    .line 87
    .line 88
    if-gez p1, :cond_5

    .line 89
    .line 90
    const-string v0, "Hundreds of Thousands"

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    const-wide/32 v3, 0x989680

    .line 94
    .line 95
    .line 96
    cmp-long p1, v1, v3

    .line 97
    .line 98
    if-gez p1, :cond_6

    .line 99
    .line 100
    const-string v0, "Millions"

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    const-wide/32 v3, 0x5f5e100

    .line 104
    .line 105
    .line 106
    cmp-long p1, v1, v3

    .line 107
    .line 108
    if-gez p1, :cond_7

    .line 109
    .line 110
    const-string v0, "Tens of Millions"

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    const-wide/32 v3, 0x3b9aca00

    .line 114
    .line 115
    .line 116
    cmp-long p1, v1, v3

    .line 117
    .line 118
    if-gez p1, :cond_8

    .line 119
    .line 120
    const-string v0, "Hundreds of Millions"

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_8
    const-wide v3, 0x2540be400L

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    cmp-long p1, v1, v3

    .line 129
    .line 130
    if-gez p1, :cond_9

    .line 131
    .line 132
    const-string v0, "Billions"

    .line 133
    .line 134
    :cond_9
    :goto_0
    return-object v0
.end method

.method public abstract a0()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final b0()Lteam/opay/business/payroll/api/BeneficiaryInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->r:Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c0(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->t:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public getSupportBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/16 v0, 0x21

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->u:Ljava/lang/String;

    .line 16
    .line 17
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    if-lt v3, v0, :cond_0

    .line 20
    .line 21
    const-class v3, Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 22
    .line 23
    invoke-static {p1, v2, v3}, Lyb0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    instance-of v2, p1, Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    move-object p1, v1

    .line 37
    :cond_1
    check-cast p1, Lteam/opay/business/payroll/api/BeneficiaryInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-object p1, v1

    .line 41
    :goto_0
    check-cast p1, Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object p1, v1

    .line 45
    :goto_1
    iput-object p1, p0, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->r:Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_5

    .line 52
    .line 53
    iget-object v2, p0, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->v:Ljava/lang/String;

    .line 54
    .line 55
    :try_start_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    if-lt v3, v0, :cond_3

    .line 58
    .line 59
    const-class v0, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 60
    .line 61
    invoke-static {p1, v2, v0}, Lyb0;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_2
    move-object v1, p1

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    instance-of v0, p1, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 72
    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    move-object p1, v1

    .line 76
    :cond_4
    check-cast p1, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catch_1
    :goto_3
    check-cast v1, Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 80
    .line 81
    :cond_5
    iput-object v1, p0, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->s:Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;

    .line 82
    .line 83
    iget-object p1, p0, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->r:Lteam/opay/business/payroll/api/BeneficiaryInfo;

    .line 84
    .line 85
    if-nez p1, :cond_6

    .line 86
    .line 87
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseSheetFragment;->dismiss()V

    .line 88
    .line 89
    .line 90
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    :cond_6
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lteam/opay/core/common/base/BaseSheetFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    sget-object p1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "dialogType"

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/business/payroll/transferConfirmDialog/BaseConfirmSheet;->a0()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    new-array v1, v1, [Lkotlin/Pair;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    aput-object v0, v1, v2

    .line 32
    .line 33
    const-string v0, "transfer_reconfirm_pop_show"

    .line 34
    .line 35
    invoke-virtual {p1, p2, v0, v1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
