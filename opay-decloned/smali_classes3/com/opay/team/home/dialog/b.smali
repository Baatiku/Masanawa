.class public final synthetic Lcom/opay/team/home/dialog/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lhm6;


# instance fields
.field public final synthetic a:Lcom/opay/team/home/dialog/HomeConfirgDialogManager;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:Lteam/opay/odialog/net/AdDataItem;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/opay/team/home/dialog/HomeConfirgDialogManager;Landroidx/fragment/app/Fragment;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/opay/team/home/dialog/b;->a:Lcom/opay/team/home/dialog/HomeConfirgDialogManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/opay/team/home/dialog/b;->b:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/opay/team/home/dialog/b;->c:Lteam/opay/odialog/net/AdDataItem;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/opay/team/home/dialog/b;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/opay/team/home/dialog/b;->e:Z

    .line 13
    .line 14
    iput-object p6, p0, Lcom/opay/team/home/dialog/b;->f:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/dialog/b;->a:Lcom/opay/team/home/dialog/HomeConfirgDialogManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/home/dialog/b;->b:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/opay/team/home/dialog/b;->c:Lteam/opay/odialog/net/AdDataItem;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/opay/team/home/dialog/b;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/opay/team/home/dialog/b;->e:Z

    .line 10
    .line 11
    iget-object v5, p0, Lcom/opay/team/home/dialog/b;->f:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    move-object v6, p1

    .line 14
    check-cast v6, Ljava/lang/String;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    check-cast p3, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    invoke-static/range {v0 .. v8}, Lcom/opay/team/home/dialog/HomeConfirgDialogManager$showHomePopDialog$1;->f(Lcom/opay/team/home/dialog/HomeConfirgDialogManager;Landroidx/fragment/app/Fragment;Lteam/opay/odialog/net/AdDataItem;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;II)Lkotlin/Unit;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method
