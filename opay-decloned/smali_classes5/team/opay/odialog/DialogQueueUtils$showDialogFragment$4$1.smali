.class final Lteam/opay/odialog/DialogQueueUtils$showDialogFragment$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DialogQueueUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/odialog/DialogQueueUtils;->e(Lteam/opay/odialog/BaseDialogFragment;Landroidx/appcompat/app/AppCompatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/odialog/DialogQueueUtils$showDialogFragment$4$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/odialog/DialogQueueUtils$showDialogFragment$4$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lteam/opay/odialog/DialogQueueUtils;->a(Lteam/opay/odialog/BaseDialogFragment;)V

    .line 3
    sget-object v1, Lteam/opay/odialog/DialogQueueUtils;->a:Lteam/opay/odialog/DialogQueueUtils;

    iget-object v2, p0, Lteam/opay/odialog/DialogQueueUtils$showDialogFragment$4$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v0, v2}, Lteam/opay/odialog/DialogQueueUtils;->e(Lteam/opay/odialog/BaseDialogFragment;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method
