.class public final Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;
.super Ljava/lang/Object;
.source "DefaultPrintProviderV2.kt"

# interfaces
.implements Lhm6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/spos/printer/function/DefaultPrintProviderV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PrintEndCallBack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhm6<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0086\u0004\u0018\u00002\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u0001B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J(\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0096\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;",
        "Lkotlin/Function3;",
        "",
        "",
        "",
        "<init>",
        "(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)V",
        "code",
        "msg",
        "deviceCode",
        "a",
        "(ILjava/lang/String;I)V",
        "spos-printer_release"
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
.field public final synthetic a:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;


# direct methods
.method public constructor <init>(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;->a:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;I)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;->a:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 7
    .line 8
    invoke-static {p2}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->access$getPrintExtendInfo$p(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;->a:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 16
    .line 17
    invoke-static {v0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->access$getCurrentPrintIndex$p(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p2, v0}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->setPrintCouplet(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p2, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;->a:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 31
    .line 32
    invoke-virtual {p2, p1, p3}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->finishFunction(II)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object p2, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;->a:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 37
    .line 38
    invoke-static {p2}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->access$getCurrentPrintIndex$p(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    const/4 v0, 0x1

    .line 43
    if-ne p2, v0, :cond_2

    .line 44
    .line 45
    iget-object p2, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;->a:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 46
    .line 47
    invoke-static {p2}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->access$isFirstPrintSuccess$p(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    .line 53
    .line 54
    sget-object p2, Lteam/opay/spos/printer/internal/PrintActionDispatch;->a:Lteam/opay/spos/printer/internal/PrintActionDispatch;

    .line 55
    .line 56
    iget-object v1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;->a:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 57
    .line 58
    invoke-static {v1, p1, p3}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->access$getFinishPrintInfo(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;II)Lteam/opay/spos/printer/internal/PosPrintFinishInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p2, v1}, Lteam/opay/spos/printer/internal/PrintActionDispatch;->c(Lteam/opay/spos/printer/internal/PosPrintFinishInfo;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object p2, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;->a:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 66
    .line 67
    invoke-static {p2}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->access$getPrintExtendInfo$p(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-eqz p2, :cond_3

    .line 72
    .line 73
    sget-object v1, Lteam/opay/spos/printer/function/PrintRecordReport;->a:Lteam/opay/spos/printer/function/PrintRecordReport;

    .line 74
    .line 75
    invoke-virtual {v1, p2, p1, p3}, Lteam/opay/spos/printer/function/PrintRecordReport;->c(Lteam/opay/spos/printer/api/PosPrintExtendInfo;II)V

    .line 76
    .line 77
    .line 78
    :cond_3
    iget-object p2, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;->a:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 79
    .line 80
    invoke-static {p2}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->access$getCurrentPrintIndex$p(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    iget-object v1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;->a:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 85
    .line 86
    invoke-static {v1}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->access$getPrintCount$p(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-lt p2, v1, :cond_4

    .line 91
    .line 92
    iget-object p2, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;->a:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 93
    .line 94
    invoke-virtual {p2, p1, p3}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->finishFunction(II)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_4
    iget-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;->a:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_5

    .line 115
    .line 116
    iget-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;->a:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 117
    .line 118
    invoke-static {p1, v0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->access$setPrintBackground(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;Z)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;->a:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 122
    .line 123
    invoke-static {p1}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->access$showPrintSecondCueView(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;->a:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 127
    .line 128
    invoke-static {p1}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->access$getCurrentPrintIndex$p(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    add-int/2addr p2, v0

    .line 133
    invoke-static {p1, p2}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->access$setCurrentPrintIndex$p(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;I)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    iget-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;->a:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    .line 138
    .line 139
    const p2, -0x186a0

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0, p2}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2;->finishFunction(II)V

    .line 143
    .line 144
    .line 145
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/String;

    .line 8
    .line 9
    check-cast p3, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$PrintEndCallBack;->a(ILjava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p1
.end method
