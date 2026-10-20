.class public Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl$a;
.super Landroidx/room/EntityInsertAdapter;
.source "FlashSaleRemindDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl$a;->a:Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ld2d;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao_Impl$a;->e(Ld2d;Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `flashSaleRemind` (`id`,`userId`,`sessionNo`,`productId`,`dailyEndTime`) VALUES (nullif(?, 0),?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ld2d;Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;)V
    .locals 4
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-interface {p1, v2, v0, v1}, Ld2d;->c(IJ)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;->e()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;->e()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;->d()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x3

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;->d()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;->c()Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x4

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;->c()Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    invoke-interface {p1, v1, v2, v3}, Ld2d;->c(IJ)V

    .line 66
    .line 67
    .line 68
    :goto_2
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;->a()Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v1, 0x5

    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;->a()Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    invoke-interface {p1, v1, v2, v3}, Ld2d;->c(IJ)V

    .line 88
    .line 89
    .line 90
    :goto_3
    return-void
.end method
