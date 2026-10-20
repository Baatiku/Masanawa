.class public final Lcom/opay/team/newhome/bean/NewBusinessData;
.super Ljava/lang/Object;
.source "NewBusinessData.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008p\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0085\u0003\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0013\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010#\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0010$\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010%\u001a\u0004\u0018\u00010&\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010(\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008-\u0010.J\u0006\u0010k\u001a\u00020\u0006J\u0006\u0010l\u001a\u00020\u0006J\u0006\u0010m\u001a\u00020\u0017J\u0006\u0010n\u001a\u00020&J\u0010\u0010o\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00100J\u0010\u0010p\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00100J\u000b\u0010q\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010r\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010s\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010t\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010u\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010v\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010w\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010x\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010y\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0010\u0010z\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u00100J\u000b\u0010{\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010|\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0010\u0010}\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003\u00a2\u0006\u0002\u0010CJ\u0010\u0010~\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003\u00a2\u0006\u0002\u0010CJ\u000b\u0010\u007f\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0011\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003\u00a2\u0006\u0002\u0010HJ\u0011\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003\u00a2\u0006\u0002\u0010HJ\u000c\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000c\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000c\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0011\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003\u00a2\u0006\u0002\u0010CJ\u0011\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003\u00a2\u0006\u0002\u0010CJ\n\u0010\u0087\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0088\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0089\u0001\u001a\u00020\u0013H\u00c6\u0003J\u000c\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0011\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003\u00a2\u0006\u0002\u0010HJ\u0011\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0017H\u00c6\u0003\u00a2\u0006\u0002\u0010HJ\u000c\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000c\u0010\u008e\u0001\u001a\u0004\u0018\u00010&H\u00c6\u0003J\u000c\u0010\u008f\u0001\u001a\u0004\u0018\u00010(H\u00c6\u0003J\u000c\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000c\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000c\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000c\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u00c6\u0003\u0010\u0094\u0001\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00132\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00032\u0008\u0008\u0002\u0010 \u001a\u00020\u00132\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010(2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001\u00a2\u0006\u0003\u0010\u0095\u0001J\u0007\u0010\u0096\u0001\u001a\u00020\u0013J\u0016\u0010\u0097\u0001\u001a\u00020\u00172\n\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0099\u0001H\u00d6\u0003J\n\u0010\u009a\u0001\u001a\u00020\u0013H\u00d6\u0001J\n\u0010\u009b\u0001\u001a\u00020\u0006H\u00d6\u0001J\u001b\u0010\u009c\u0001\u001a\u00030\u009d\u00012\u0008\u0010\u009e\u0001\u001a\u00030\u009f\u00012\u0007\u0010\u00a0\u0001\u001a\u00020\u0013R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u00101\u001a\u0004\u0008/\u00100R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u00101\u001a\u0004\u00082\u00100R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00104R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00104R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00104R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00104R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00104R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u00104R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u00104R \u0010\r\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u00104\"\u0004\u0008<\u0010=R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u00104R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u00101\u001a\u0004\u0008?\u00100R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u00104R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u00104R\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010D\u001a\u0004\u0008B\u0010CR\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010D\u001a\u0004\u0008E\u0010CR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u00104R\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010I\u001a\u0004\u0008G\u0010HR\"\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010I\u001a\u0004\u0008J\u0010H\"\u0004\u0008K\u0010LR\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008M\u00104R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008N\u00104R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u00104R\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010D\u001a\u0004\u0008P\u0010CR\"\u0010\u001d\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010D\u001a\u0004\u0008Q\u0010C\"\u0004\u0008R\u0010SR\u001e\u0010\u001e\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR\u001e\u0010\u001f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u0010U\"\u0004\u0008Y\u0010WR\u001e\u0010 \u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]R\u0018\u0010!\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008^\u00104R\u001a\u0010\"\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010I\u001a\u0004\u0008_\u0010HR\u001a\u0010#\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010I\u001a\u0004\u0008`\u0010HR \u0010$\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u00104\"\u0004\u0008b\u0010=R\u0018\u0010%\u001a\u0004\u0018\u00010&8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008c\u0010dR\u0018\u0010\'\u001a\u0004\u0018\u00010(8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008e\u0010fR\u0018\u0010)\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008g\u00104R\u0018\u0010*\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008h\u00104R\u0018\u0010+\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008i\u00104R\u0018\u0010,\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008j\u00104\u00a8\u0006\u00a1\u0001"
    }
    d2 = {
        "Lcom/opay/team/newhome/bean/NewBusinessData;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "serviceId",
        "serviceCode",
        "",
        "imgUrl",
        "diverseImgUrl",
        "superscriptImgUrl",
        "diverseSuperscriptImgUrl",
        "name",
        "descColor",
        "description",
        "bgColor",
        "leftTime",
        "amount",
        "amountImgUrl",
        "openMode",
        "",
        "taskType",
        "bannerCode",
        "showCountDown",
        "",
        "hasUploadAd",
        "action",
        "title",
        "des",
        "banner_order",
        "bannerType",
        "duration",
        "currentPosition",
        "recyclerIndex",
        "actionTitle",
        "callbackShow",
        "callbackClick",
        "rich_desc",
        "superscriptAd",
        "Lteam/opay/odialog/net/AdDataItem;",
        "backgroundConfig",
        "Lteam/opay/odialog/net/BackgroundConfig;",
        "buttonColor",
        "buttonFontColor",
        "ageLimit",
        "adReminder",
        "<init>",
        "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JJILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;Lteam/opay/odialog/net/BackgroundConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getId",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getServiceId",
        "getServiceCode",
        "()Ljava/lang/String;",
        "getImgUrl",
        "getDiverseImgUrl",
        "getSuperscriptImgUrl",
        "getDiverseSuperscriptImgUrl",
        "getName",
        "getDescColor",
        "getDescription",
        "setDescription",
        "(Ljava/lang/String;)V",
        "getBgColor",
        "getLeftTime",
        "getAmount",
        "getAmountImgUrl",
        "getOpenMode",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getTaskType",
        "getBannerCode",
        "getShowCountDown",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getHasUploadAd",
        "setHasUploadAd",
        "(Ljava/lang/Boolean;)V",
        "getAction",
        "getTitle",
        "getDes",
        "getBanner_order",
        "getBannerType",
        "setBannerType",
        "(Ljava/lang/Integer;)V",
        "getDuration",
        "()J",
        "setDuration",
        "(J)V",
        "getCurrentPosition",
        "setCurrentPosition",
        "getRecyclerIndex",
        "()I",
        "setRecyclerIndex",
        "(I)V",
        "getActionTitle",
        "getCallbackShow",
        "getCallbackClick",
        "getRich_desc",
        "setRich_desc",
        "getSuperscriptAd",
        "()Lteam/opay/odialog/net/AdDataItem;",
        "getBackgroundConfig",
        "()Lteam/opay/odialog/net/BackgroundConfig;",
        "getButtonColor",
        "getButtonFontColor",
        "getAgeLimit",
        "getAdReminder",
        "getImageIconUrl",
        "getImageSuperscriptUrl",
        "showSuper",
        "toAdDataItem",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component30",
        "component31",
        "component32",
        "component33",
        "component34",
        "component35",
        "component36",
        "component37",
        "copy",
        "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JJILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;Lteam/opay/odialog/net/BackgroundConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/opay/team/newhome/bean/NewBusinessData;",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/opay/team/newhome/bean/NewBusinessData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final action:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final actionTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action_title"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final adReminder:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adReminder"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final ageLimit:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ageLimit"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final amount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final amountImgUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount_img_url"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final backgroundConfig:Lteam/opay/odialog/net/BackgroundConfig;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backgroundConfig"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final bannerCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_code"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private bannerType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_type"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final banner_order:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_order"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final bgColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bg_color"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final buttonColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "buttonColor"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final buttonFontColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "buttonFontColor"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final callbackClick:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "callbackClick"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final callbackShow:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "callbackShow"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentPosition:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_position"
    .end annotation
.end field

.field private final des:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "des"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final descColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "des_color"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final diverseImgUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "diverse_img_url"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final diverseSuperscriptImgUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "diverse_superscript_url"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private duration:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private transient hasUploadAd:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_upload_ad"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final id:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final imgUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "img_url"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final leftTime:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "left_time"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final openMode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "open_mode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recyclerIndex:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recycler_index"
    .end annotation
.end field

.field private rich_desc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rich_desc"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final serviceCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service_code"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final serviceId:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service_id"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final showCountDown:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show_count_down"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final superscriptAd:Lteam/opay/odialog/net/AdDataItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "superscript_ad"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final superscriptImgUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "superscript_url"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final taskType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "task_type"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/opay/team/newhome/bean/NewBusinessData$Creator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/opay/team/newhome/bean/NewBusinessData$Creator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/opay/team/newhome/bean/NewBusinessData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JJILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;Lteam/opay/odialog/net/BackgroundConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
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
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p30    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p31    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p32    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # Lteam/opay/odialog/net/AdDataItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Lteam/opay/odialog/net/BackgroundConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p37    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p38    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p39    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->id:Ljava/lang/Long;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceId:Ljava/lang/Long;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceCode:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->imgUrl:Ljava/lang/String;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseImgUrl:Ljava/lang/String;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptImgUrl:Ljava/lang/String;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseSuperscriptImgUrl:Ljava/lang/String;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->name:Ljava/lang/String;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->descColor:Ljava/lang/String;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->description:Ljava/lang/String;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->bgColor:Ljava/lang/String;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->leftTime:Ljava/lang/Long;

    move-object/from16 v1, p13

    .line 14
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->amount:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->amountImgUrl:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->openMode:Ljava/lang/Integer;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->taskType:Ljava/lang/Integer;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerCode:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->showCountDown:Ljava/lang/Boolean;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->hasUploadAd:Ljava/lang/Boolean;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->action:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->title:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->des:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->banner_order:Ljava/lang/Integer;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerType:Ljava/lang/Integer;

    move-wide/from16 v1, p25

    .line 26
    iput-wide v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->duration:J

    move-wide/from16 v1, p27

    .line 27
    iput-wide v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->currentPosition:J

    move/from16 v1, p29

    .line 28
    iput v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->recyclerIndex:I

    move-object/from16 v1, p30

    .line 29
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->actionTitle:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 30
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackShow:Ljava/lang/Boolean;

    move-object/from16 v1, p32

    .line 31
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackClick:Ljava/lang/Boolean;

    move-object/from16 v1, p33

    .line 32
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->rich_desc:Ljava/lang/String;

    move-object/from16 v1, p34

    .line 33
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptAd:Lteam/opay/odialog/net/AdDataItem;

    move-object/from16 v1, p35

    .line 34
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->backgroundConfig:Lteam/opay/odialog/net/BackgroundConfig;

    move-object/from16 v1, p36

    .line 35
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonColor:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 36
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonFontColor:Ljava/lang/String;

    move-object/from16 v1, p38

    .line 37
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->ageLimit:Ljava/lang/String;

    move-object/from16 v1, p39

    .line 38
    iput-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->adReminder:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JJILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;Lteam/opay/odialog/net/BackgroundConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 41

    const/high16 v0, 0x40000

    and-int v0, p40, v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    goto :goto_0

    :cond_0
    move-object/from16 v20, p19

    :goto_0
    const/high16 v0, 0x1000000

    and-int v0, p40, v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    move-wide/from16 v26, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v26, p25

    :goto_1
    const/high16 v0, 0x2000000

    and-int v0, p40, v0

    if-eqz v0, :cond_2

    move-wide/from16 v28, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v28, p27

    :goto_2
    const/high16 v0, 0x4000000

    and-int v0, p40, v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    const/16 v30, -0x1

    goto :goto_3

    :cond_3
    move/from16 v30, p29

    :goto_3
    and-int/lit8 v0, p41, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object/from16 v36, v1

    goto :goto_4

    :cond_4
    move-object/from16 v36, p35

    :goto_4
    and-int/lit8 v0, p41, 0x2

    if-eqz v0, :cond_5

    move-object/from16 v37, v1

    goto :goto_5

    :cond_5
    move-object/from16 v37, p36

    :goto_5
    and-int/lit8 v0, p41, 0x4

    if-eqz v0, :cond_6

    move-object/from16 v38, v1

    goto :goto_6

    :cond_6
    move-object/from16 v38, p37

    :goto_6
    and-int/lit8 v0, p41, 0x8

    if-eqz v0, :cond_7

    move-object/from16 v39, v1

    goto :goto_7

    :cond_7
    move-object/from16 v39, p38

    :goto_7
    and-int/lit8 v0, p41, 0x10

    if-eqz v0, :cond_8

    move-object/from16 v40, v1

    goto :goto_8

    :cond_8
    move-object/from16 v40, p39

    :goto_8
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    .line 40
    invoke-direct/range {v1 .. v40}, Lcom/opay/team/newhome/bean/NewBusinessData;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JJILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;Lteam/opay/odialog/net/BackgroundConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/opay/team/newhome/bean/NewBusinessData;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JJILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;Lteam/opay/odialog/net/BackgroundConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/opay/team/newhome/bean/NewBusinessData;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p40

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->id:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceId:Ljava/lang/Long;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceCode:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->imgUrl:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseImgUrl:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptImgUrl:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseSuperscriptImgUrl:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->name:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->descColor:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->description:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->bgColor:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->leftTime:Ljava/lang/Long;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->amount:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->amountImgUrl:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->openMode:Ljava/lang/Integer;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->taskType:Ljava/lang/Integer;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerCode:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->showCountDown:Ljava/lang/Boolean;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->hasUploadAd:Ljava/lang/Boolean;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->action:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->title:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->des:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->banner_order:Ljava/lang/Integer;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerType:Ljava/lang/Integer;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p13, v14

    move-object/from16 p24, v15

    if-eqz v16, :cond_18

    iget-wide v14, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->duration:J

    goto :goto_18

    :cond_18
    move-wide/from16 v14, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-wide/from16 p25, v14

    if-eqz v16, :cond_19

    iget-wide v14, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->currentPosition:J

    goto :goto_19

    :cond_19
    move-wide/from16 v14, p27

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-wide/from16 p27, v14

    if-eqz v16, :cond_1a

    iget v14, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->recyclerIndex:I

    goto :goto_1a

    :cond_1a
    move/from16 v14, p29

    :goto_1a
    const/high16 v15, 0x8000000

    and-int/2addr v15, v1

    if-eqz v15, :cond_1b

    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->actionTitle:Ljava/lang/String;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p30

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move-object/from16 p30, v15

    if-eqz v16, :cond_1c

    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackShow:Ljava/lang/Boolean;

    goto :goto_1c

    :cond_1c
    move-object/from16 v15, p31

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move-object/from16 p31, v15

    if-eqz v16, :cond_1d

    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackClick:Ljava/lang/Boolean;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p32

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, v1, v16

    move-object/from16 p32, v15

    if-eqz v16, :cond_1e

    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->rich_desc:Ljava/lang/String;

    goto :goto_1e

    :cond_1e
    move-object/from16 v15, p33

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptAd:Lteam/opay/odialog/net/AdDataItem;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p34

    :goto_1f
    and-int/lit8 v16, p41, 0x1

    move-object/from16 p34, v1

    if-eqz v16, :cond_20

    iget-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->backgroundConfig:Lteam/opay/odialog/net/BackgroundConfig;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p35

    :goto_20
    and-int/lit8 v16, p41, 0x2

    move-object/from16 p35, v1

    if-eqz v16, :cond_21

    iget-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonColor:Ljava/lang/String;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p36

    :goto_21
    and-int/lit8 v16, p41, 0x4

    move-object/from16 p36, v1

    if-eqz v16, :cond_22

    iget-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonFontColor:Ljava/lang/String;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p37

    :goto_22
    and-int/lit8 v16, p41, 0x8

    move-object/from16 p37, v1

    if-eqz v16, :cond_23

    iget-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->ageLimit:Ljava/lang/String;

    goto :goto_23

    :cond_23
    move-object/from16 v1, p38

    :goto_23
    and-int/lit8 v16, p41, 0x10

    move-object/from16 p38, v1

    if-eqz v16, :cond_24

    iget-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->adReminder:Ljava/lang/String;

    goto :goto_24

    :cond_24
    move-object/from16 v1, p39

    :goto_24
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p29, v14

    move-object/from16 p33, v15

    move-object/from16 p39, v1

    invoke-virtual/range {p0 .. p39}, Lcom/opay/team/newhome/bean/NewBusinessData;->copy(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JJILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;Lteam/opay/odialog/net/BackgroundConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/opay/team/newhome/bean/NewBusinessData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->id:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->bgColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->leftTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->amount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->amountImgUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->openMode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component16()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->taskType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component18()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->showCountDown:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component19()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->hasUploadAd:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->action:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->des:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component23()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->banner_order:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component24()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component25()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component26()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->currentPosition:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component27()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->recyclerIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final component28()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->actionTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component29()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackShow:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component30()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackClick:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component31()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->rich_desc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component32()Lteam/opay/odialog/net/AdDataItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptAd:Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component33()Lteam/opay/odialog/net/BackgroundConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->backgroundConfig:Lteam/opay/odialog/net/BackgroundConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component34()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component35()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonFontColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component36()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->ageLimit:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component37()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->adReminder:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->imgUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseImgUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptImgUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseSuperscriptImgUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->descColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JJILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;Lteam/opay/odialog/net/BackgroundConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/opay/team/newhome/bean/NewBusinessData;
    .locals 41
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
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
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p30    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p31    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p32    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # Lteam/opay/odialog/net/AdDataItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Lteam/opay/odialog/net/BackgroundConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p37    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p38    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p39    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-wide/from16 v25, p25

    move-wide/from16 v27, p27

    move/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    move-object/from16 v35, p35

    move-object/from16 v36, p36

    move-object/from16 v37, p37

    move-object/from16 v38, p38

    move-object/from16 v39, p39

    new-instance v40, Lcom/opay/team/newhome/bean/NewBusinessData;

    move-object/from16 v0, v40

    invoke-direct/range {v0 .. v39}, Lcom/opay/team/newhome/bean/NewBusinessData;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JJILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/odialog/net/AdDataItem;Lteam/opay/odialog/net/BackgroundConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v40
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->id:Ljava/lang/Long;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->id:Ljava/lang/Long;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceId:Ljava/lang/Long;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceId:Ljava/lang/Long;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceCode:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceCode:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->imgUrl:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->imgUrl:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseImgUrl:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseImgUrl:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptImgUrl:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptImgUrl:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseSuperscriptImgUrl:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseSuperscriptImgUrl:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->name:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->name:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->descColor:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->descColor:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->description:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->description:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->bgColor:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->bgColor:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->leftTime:Ljava/lang/Long;

    .line 135
    .line 136
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->leftTime:Ljava/lang/Long;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->amount:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->amount:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->amountImgUrl:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->amountImgUrl:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->openMode:Ljava/lang/Integer;

    .line 168
    .line 169
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->openMode:Ljava/lang/Integer;

    .line 170
    .line 171
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_10

    .line 176
    .line 177
    return v2

    .line 178
    :cond_10
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->taskType:Ljava/lang/Integer;

    .line 179
    .line 180
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->taskType:Ljava/lang/Integer;

    .line 181
    .line 182
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-nez v1, :cond_11

    .line 187
    .line 188
    return v2

    .line 189
    :cond_11
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerCode:Ljava/lang/String;

    .line 190
    .line 191
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerCode:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_12

    .line 198
    .line 199
    return v2

    .line 200
    :cond_12
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->showCountDown:Ljava/lang/Boolean;

    .line 201
    .line 202
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->showCountDown:Ljava/lang/Boolean;

    .line 203
    .line 204
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_13

    .line 209
    .line 210
    return v2

    .line 211
    :cond_13
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->hasUploadAd:Ljava/lang/Boolean;

    .line 212
    .line 213
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->hasUploadAd:Ljava/lang/Boolean;

    .line 214
    .line 215
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_14

    .line 220
    .line 221
    return v2

    .line 222
    :cond_14
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->action:Ljava/lang/String;

    .line 223
    .line 224
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->action:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-nez v1, :cond_15

    .line 231
    .line 232
    return v2

    .line 233
    :cond_15
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->title:Ljava/lang/String;

    .line 234
    .line 235
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->title:Ljava/lang/String;

    .line 236
    .line 237
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-nez v1, :cond_16

    .line 242
    .line 243
    return v2

    .line 244
    :cond_16
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->des:Ljava/lang/String;

    .line 245
    .line 246
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->des:Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-nez v1, :cond_17

    .line 253
    .line 254
    return v2

    .line 255
    :cond_17
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->banner_order:Ljava/lang/Integer;

    .line 256
    .line 257
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->banner_order:Ljava/lang/Integer;

    .line 258
    .line 259
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_18

    .line 264
    .line 265
    return v2

    .line 266
    :cond_18
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerType:Ljava/lang/Integer;

    .line 267
    .line 268
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerType:Ljava/lang/Integer;

    .line 269
    .line 270
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-nez v1, :cond_19

    .line 275
    .line 276
    return v2

    .line 277
    :cond_19
    iget-wide v3, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->duration:J

    .line 278
    .line 279
    iget-wide v5, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->duration:J

    .line 280
    .line 281
    cmp-long v1, v3, v5

    .line 282
    .line 283
    if-eqz v1, :cond_1a

    .line 284
    .line 285
    return v2

    .line 286
    :cond_1a
    iget-wide v3, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->currentPosition:J

    .line 287
    .line 288
    iget-wide v5, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->currentPosition:J

    .line 289
    .line 290
    cmp-long v1, v3, v5

    .line 291
    .line 292
    if-eqz v1, :cond_1b

    .line 293
    .line 294
    return v2

    .line 295
    :cond_1b
    iget v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->recyclerIndex:I

    .line 296
    .line 297
    iget v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->recyclerIndex:I

    .line 298
    .line 299
    if-eq v1, v3, :cond_1c

    .line 300
    .line 301
    return v2

    .line 302
    :cond_1c
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->actionTitle:Ljava/lang/String;

    .line 303
    .line 304
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->actionTitle:Ljava/lang/String;

    .line 305
    .line 306
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-nez v1, :cond_1d

    .line 311
    .line 312
    return v2

    .line 313
    :cond_1d
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackShow:Ljava/lang/Boolean;

    .line 314
    .line 315
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackShow:Ljava/lang/Boolean;

    .line 316
    .line 317
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-nez v1, :cond_1e

    .line 322
    .line 323
    return v2

    .line 324
    :cond_1e
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackClick:Ljava/lang/Boolean;

    .line 325
    .line 326
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackClick:Ljava/lang/Boolean;

    .line 327
    .line 328
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-nez v1, :cond_1f

    .line 333
    .line 334
    return v2

    .line 335
    :cond_1f
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->rich_desc:Ljava/lang/String;

    .line 336
    .line 337
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->rich_desc:Ljava/lang/String;

    .line 338
    .line 339
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-nez v1, :cond_20

    .line 344
    .line 345
    return v2

    .line 346
    :cond_20
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptAd:Lteam/opay/odialog/net/AdDataItem;

    .line 347
    .line 348
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptAd:Lteam/opay/odialog/net/AdDataItem;

    .line 349
    .line 350
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-nez v1, :cond_21

    .line 355
    .line 356
    return v2

    .line 357
    :cond_21
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->backgroundConfig:Lteam/opay/odialog/net/BackgroundConfig;

    .line 358
    .line 359
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->backgroundConfig:Lteam/opay/odialog/net/BackgroundConfig;

    .line 360
    .line 361
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    if-nez v1, :cond_22

    .line 366
    .line 367
    return v2

    .line 368
    :cond_22
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonColor:Ljava/lang/String;

    .line 369
    .line 370
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonColor:Ljava/lang/String;

    .line 371
    .line 372
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-nez v1, :cond_23

    .line 377
    .line 378
    return v2

    .line 379
    :cond_23
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonFontColor:Ljava/lang/String;

    .line 380
    .line 381
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonFontColor:Ljava/lang/String;

    .line 382
    .line 383
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-nez v1, :cond_24

    .line 388
    .line 389
    return v2

    .line 390
    :cond_24
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->ageLimit:Ljava/lang/String;

    .line 391
    .line 392
    iget-object v3, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->ageLimit:Ljava/lang/String;

    .line 393
    .line 394
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-nez v1, :cond_25

    .line 399
    .line 400
    return v2

    .line 401
    :cond_25
    iget-object v1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->adReminder:Ljava/lang/String;

    .line 402
    .line 403
    iget-object p1, p1, Lcom/opay/team/newhome/bean/NewBusinessData;->adReminder:Ljava/lang/String;

    .line 404
    .line 405
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result p1

    .line 409
    if-nez p1, :cond_26

    .line 410
    .line 411
    return v2

    .line 412
    :cond_26
    return v0
.end method

.method public final getAction()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->action:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getActionTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->actionTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdReminder()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->adReminder:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAgeLimit()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->ageLimit:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAmount()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->amount:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAmountImgUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->amountImgUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBackgroundConfig()Lteam/opay/odialog/net/BackgroundConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->backgroundConfig:Lteam/opay/odialog/net/BackgroundConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBannerCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBannerType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBanner_order()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->banner_order:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBgColor()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->bgColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getButtonColor()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getButtonFontColor()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonFontColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCallbackClick()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackClick:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCallbackShow()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackShow:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->currentPosition:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDes()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->des:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDescColor()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->descColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDiverseImgUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseImgUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDiverseSuperscriptImgUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseSuperscriptImgUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->duration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getHasUploadAd()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->hasUploadAd:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->id:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImageIconUrl()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseImgUrl:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move-object v0, v1

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->imgUrl:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move-object v1, v0

    .line 20
    :goto_0
    move-object v0, v1

    .line 21
    :cond_2
    return-object v0
.end method

.method public final getImageSuperscriptUrl()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseSuperscriptImgUrl:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    move-object v0, v1

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptImgUrl:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move-object v1, v0

    .line 20
    :goto_0
    move-object v0, v1

    .line 21
    :cond_2
    return-object v0
.end method

.method public final getImgUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->imgUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLeftTime()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->leftTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOpenMode()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->openMode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRecyclerIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->recyclerIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRich_desc()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->rich_desc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getServiceCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getServiceId()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowCountDown()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->showCountDown:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSuperscriptAd()Lteam/opay/odialog/net/AdDataItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptAd:Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSuperscriptImgUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptImgUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->taskType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->id:Ljava/lang/Long;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceId:Ljava/lang/Long;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceCode:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->imgUrl:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseImgUrl:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptImgUrl:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseSuperscriptImgUrl:Ljava/lang/String;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->name:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v2, :cond_7

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->descColor:Ljava/lang/String;

    .line 106
    .line 107
    if-nez v2, :cond_8

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    goto :goto_8

    .line 111
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->description:Ljava/lang/String;

    .line 119
    .line 120
    if-nez v2, :cond_9

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    goto :goto_9

    .line 124
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    :goto_9
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->bgColor:Ljava/lang/String;

    .line 132
    .line 133
    if-nez v2, :cond_a

    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    goto :goto_a

    .line 137
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    :goto_a
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->leftTime:Ljava/lang/Long;

    .line 145
    .line 146
    if-nez v2, :cond_b

    .line 147
    .line 148
    const/4 v2, 0x0

    .line 149
    goto :goto_b

    .line 150
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_b
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    .line 157
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->amount:Ljava/lang/String;

    .line 158
    .line 159
    if-nez v2, :cond_c

    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    goto :goto_c

    .line 163
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :goto_c
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    .line 170
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->amountImgUrl:Ljava/lang/String;

    .line 171
    .line 172
    if-nez v2, :cond_d

    .line 173
    .line 174
    const/4 v2, 0x0

    .line 175
    goto :goto_d

    .line 176
    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    :goto_d
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    .line 182
    .line 183
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->openMode:Ljava/lang/Integer;

    .line 184
    .line 185
    if-nez v2, :cond_e

    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    goto :goto_e

    .line 189
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    :goto_e
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    .line 195
    .line 196
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->taskType:Ljava/lang/Integer;

    .line 197
    .line 198
    if-nez v2, :cond_f

    .line 199
    .line 200
    const/4 v2, 0x0

    .line 201
    goto :goto_f

    .line 202
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    :goto_f
    add-int/2addr v0, v2

    .line 207
    mul-int/lit8 v0, v0, 0x1f

    .line 208
    .line 209
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerCode:Ljava/lang/String;

    .line 210
    .line 211
    if-nez v2, :cond_10

    .line 212
    .line 213
    const/4 v2, 0x0

    .line 214
    goto :goto_10

    .line 215
    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    :goto_10
    add-int/2addr v0, v2

    .line 220
    mul-int/lit8 v0, v0, 0x1f

    .line 221
    .line 222
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->showCountDown:Ljava/lang/Boolean;

    .line 223
    .line 224
    if-nez v2, :cond_11

    .line 225
    .line 226
    const/4 v2, 0x0

    .line 227
    goto :goto_11

    .line 228
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    :goto_11
    add-int/2addr v0, v2

    .line 233
    mul-int/lit8 v0, v0, 0x1f

    .line 234
    .line 235
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->hasUploadAd:Ljava/lang/Boolean;

    .line 236
    .line 237
    if-nez v2, :cond_12

    .line 238
    .line 239
    const/4 v2, 0x0

    .line 240
    goto :goto_12

    .line 241
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    :goto_12
    add-int/2addr v0, v2

    .line 246
    mul-int/lit8 v0, v0, 0x1f

    .line 247
    .line 248
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->action:Ljava/lang/String;

    .line 249
    .line 250
    if-nez v2, :cond_13

    .line 251
    .line 252
    const/4 v2, 0x0

    .line 253
    goto :goto_13

    .line 254
    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    :goto_13
    add-int/2addr v0, v2

    .line 259
    mul-int/lit8 v0, v0, 0x1f

    .line 260
    .line 261
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->title:Ljava/lang/String;

    .line 262
    .line 263
    if-nez v2, :cond_14

    .line 264
    .line 265
    const/4 v2, 0x0

    .line 266
    goto :goto_14

    .line 267
    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    :goto_14
    add-int/2addr v0, v2

    .line 272
    mul-int/lit8 v0, v0, 0x1f

    .line 273
    .line 274
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->des:Ljava/lang/String;

    .line 275
    .line 276
    if-nez v2, :cond_15

    .line 277
    .line 278
    const/4 v2, 0x0

    .line 279
    goto :goto_15

    .line 280
    :cond_15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    :goto_15
    add-int/2addr v0, v2

    .line 285
    mul-int/lit8 v0, v0, 0x1f

    .line 286
    .line 287
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->banner_order:Ljava/lang/Integer;

    .line 288
    .line 289
    if-nez v2, :cond_16

    .line 290
    .line 291
    const/4 v2, 0x0

    .line 292
    goto :goto_16

    .line 293
    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    :goto_16
    add-int/2addr v0, v2

    .line 298
    mul-int/lit8 v0, v0, 0x1f

    .line 299
    .line 300
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerType:Ljava/lang/Integer;

    .line 301
    .line 302
    if-nez v2, :cond_17

    .line 303
    .line 304
    const/4 v2, 0x0

    .line 305
    goto :goto_17

    .line 306
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    :goto_17
    add-int/2addr v0, v2

    .line 311
    mul-int/lit8 v0, v0, 0x1f

    .line 312
    .line 313
    iget-wide v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->duration:J

    .line 314
    .line 315
    invoke-static {v2, v3}, Lv3b;->a(J)I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    add-int/2addr v0, v2

    .line 320
    mul-int/lit8 v0, v0, 0x1f

    .line 321
    .line 322
    iget-wide v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->currentPosition:J

    .line 323
    .line 324
    invoke-static {v2, v3}, Lv3b;->a(J)I

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    add-int/2addr v0, v2

    .line 329
    mul-int/lit8 v0, v0, 0x1f

    .line 330
    .line 331
    iget v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->recyclerIndex:I

    .line 332
    .line 333
    add-int/2addr v0, v2

    .line 334
    mul-int/lit8 v0, v0, 0x1f

    .line 335
    .line 336
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->actionTitle:Ljava/lang/String;

    .line 337
    .line 338
    if-nez v2, :cond_18

    .line 339
    .line 340
    const/4 v2, 0x0

    .line 341
    goto :goto_18

    .line 342
    :cond_18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    :goto_18
    add-int/2addr v0, v2

    .line 347
    mul-int/lit8 v0, v0, 0x1f

    .line 348
    .line 349
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackShow:Ljava/lang/Boolean;

    .line 350
    .line 351
    if-nez v2, :cond_19

    .line 352
    .line 353
    const/4 v2, 0x0

    .line 354
    goto :goto_19

    .line 355
    :cond_19
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    :goto_19
    add-int/2addr v0, v2

    .line 360
    mul-int/lit8 v0, v0, 0x1f

    .line 361
    .line 362
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackClick:Ljava/lang/Boolean;

    .line 363
    .line 364
    if-nez v2, :cond_1a

    .line 365
    .line 366
    const/4 v2, 0x0

    .line 367
    goto :goto_1a

    .line 368
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    :goto_1a
    add-int/2addr v0, v2

    .line 373
    mul-int/lit8 v0, v0, 0x1f

    .line 374
    .line 375
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->rich_desc:Ljava/lang/String;

    .line 376
    .line 377
    if-nez v2, :cond_1b

    .line 378
    .line 379
    const/4 v2, 0x0

    .line 380
    goto :goto_1b

    .line 381
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    :goto_1b
    add-int/2addr v0, v2

    .line 386
    mul-int/lit8 v0, v0, 0x1f

    .line 387
    .line 388
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptAd:Lteam/opay/odialog/net/AdDataItem;

    .line 389
    .line 390
    if-nez v2, :cond_1c

    .line 391
    .line 392
    const/4 v2, 0x0

    .line 393
    goto :goto_1c

    .line 394
    :cond_1c
    invoke-virtual {v2}, Lteam/opay/odialog/net/AdDataItem;->hashCode()I

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    :goto_1c
    add-int/2addr v0, v2

    .line 399
    mul-int/lit8 v0, v0, 0x1f

    .line 400
    .line 401
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->backgroundConfig:Lteam/opay/odialog/net/BackgroundConfig;

    .line 402
    .line 403
    if-nez v2, :cond_1d

    .line 404
    .line 405
    const/4 v2, 0x0

    .line 406
    goto :goto_1d

    .line 407
    :cond_1d
    invoke-virtual {v2}, Lteam/opay/odialog/net/BackgroundConfig;->hashCode()I

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    :goto_1d
    add-int/2addr v0, v2

    .line 412
    mul-int/lit8 v0, v0, 0x1f

    .line 413
    .line 414
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonColor:Ljava/lang/String;

    .line 415
    .line 416
    if-nez v2, :cond_1e

    .line 417
    .line 418
    const/4 v2, 0x0

    .line 419
    goto :goto_1e

    .line 420
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    :goto_1e
    add-int/2addr v0, v2

    .line 425
    mul-int/lit8 v0, v0, 0x1f

    .line 426
    .line 427
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonFontColor:Ljava/lang/String;

    .line 428
    .line 429
    if-nez v2, :cond_1f

    .line 430
    .line 431
    const/4 v2, 0x0

    .line 432
    goto :goto_1f

    .line 433
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    :goto_1f
    add-int/2addr v0, v2

    .line 438
    mul-int/lit8 v0, v0, 0x1f

    .line 439
    .line 440
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->ageLimit:Ljava/lang/String;

    .line 441
    .line 442
    if-nez v2, :cond_20

    .line 443
    .line 444
    const/4 v2, 0x0

    .line 445
    goto :goto_20

    .line 446
    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    :goto_20
    add-int/2addr v0, v2

    .line 451
    mul-int/lit8 v0, v0, 0x1f

    .line 452
    .line 453
    iget-object v2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->adReminder:Ljava/lang/String;

    .line 454
    .line 455
    if-nez v2, :cond_21

    .line 456
    .line 457
    goto :goto_21

    .line 458
    :cond_21
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    :goto_21
    add-int/2addr v0, v1

    .line 463
    return v0
.end method

.method public final setBannerType(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setCurrentPosition(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->currentPosition:J

    .line 2
    .line 3
    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->duration:J

    .line 2
    .line 3
    return-void
.end method

.method public final setHasUploadAd(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->hasUploadAd:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setRecyclerIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->recyclerIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRich_desc(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->rich_desc:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final showSuper()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptAd:Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/odialog/net/AdDataItem;->getImageSuperscriptUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const-string v0, ""

    .line 12
    .line 13
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-lez v0, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/opay/team/newhome/bean/NewBusinessData;->getImageSuperscriptUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    const/4 v1, 0x0

    .line 33
    :goto_0
    return v1
.end method

.method public final toAdDataItem()Lteam/opay/odialog/net/AdDataItem;
    .locals 37
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->id:Ljava/lang/Long;

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    iget-object v4, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->imgUrl:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseImgUrl:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v7, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->action:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v8, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->actionTitle:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v9, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->description:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v10, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->rich_desc:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v11, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->name:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackShow:Ljava/lang/Boolean;

    .line 24
    .line 25
    move-object/from16 v22, v1

    .line 26
    .line 27
    iget-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackClick:Ljava/lang/Boolean;

    .line 28
    .line 29
    move-object/from16 v23, v1

    .line 30
    .line 31
    iget-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->backgroundConfig:Lteam/opay/odialog/net/BackgroundConfig;

    .line 32
    .line 33
    move-object/from16 v30, v1

    .line 34
    .line 35
    iget-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonColor:Ljava/lang/String;

    .line 36
    .line 37
    move-object/from16 v31, v1

    .line 38
    .line 39
    iget-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonFontColor:Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v32, v1

    .line 42
    .line 43
    iget-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->adReminder:Ljava/lang/String;

    .line 44
    .line 45
    move-object/from16 v34, v1

    .line 46
    .line 47
    iget-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->ageLimit:Ljava/lang/String;

    .line 48
    .line 49
    move-object/from16 v33, v1

    .line 50
    .line 51
    new-instance v1, Lteam/opay/odialog/net/AdDataItem;

    .line 52
    .line 53
    move-object v2, v1

    .line 54
    const v35, 0x7e7fe08

    .line 55
    .line 56
    .line 57
    const/16 v36, 0x0

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v12, 0x0

    .line 61
    const/4 v13, 0x0

    .line 62
    const/4 v14, 0x0

    .line 63
    const/4 v15, 0x0

    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    const/16 v17, 0x0

    .line 67
    .line 68
    const/16 v18, 0x0

    .line 69
    .line 70
    const/16 v19, 0x0

    .line 71
    .line 72
    const/16 v20, 0x0

    .line 73
    .line 74
    const/16 v21, 0x0

    .line 75
    .line 76
    const/16 v24, 0x0

    .line 77
    .line 78
    const/16 v25, 0x0

    .line 79
    .line 80
    const/16 v26, 0x0

    .line 81
    .line 82
    const/16 v27, 0x0

    .line 83
    .line 84
    const/16 v28, 0x0

    .line 85
    .line 86
    const/16 v29, 0x0

    .line 87
    .line 88
    invoke-direct/range {v2 .. v36}, Lteam/opay/odialog/net/AdDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lteam/opay/odialog/DialogClosePosition;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lteam/opay/odialog/net/BackgroundConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 89
    .line 90
    .line 91
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 41
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->id:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceId:Ljava/lang/Long;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceCode:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->imgUrl:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseImgUrl:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptImgUrl:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseSuperscriptImgUrl:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->name:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->descColor:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->description:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->bgColor:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->leftTime:Ljava/lang/Long;

    .line 26
    .line 27
    iget-object v13, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->amount:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v14, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->amountImgUrl:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->openMode:Ljava/lang/Integer;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->taskType:Ljava/lang/Integer;

    .line 36
    .line 37
    move-object/from16 v17, v15

    .line 38
    .line 39
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerCode:Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v18, v15

    .line 42
    .line 43
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->showCountDown:Ljava/lang/Boolean;

    .line 44
    .line 45
    move-object/from16 v19, v15

    .line 46
    .line 47
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->hasUploadAd:Ljava/lang/Boolean;

    .line 48
    .line 49
    move-object/from16 v20, v15

    .line 50
    .line 51
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->action:Ljava/lang/String;

    .line 52
    .line 53
    move-object/from16 v21, v15

    .line 54
    .line 55
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->title:Ljava/lang/String;

    .line 56
    .line 57
    move-object/from16 v22, v15

    .line 58
    .line 59
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->des:Ljava/lang/String;

    .line 60
    .line 61
    move-object/from16 v23, v15

    .line 62
    .line 63
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->banner_order:Ljava/lang/Integer;

    .line 64
    .line 65
    move-object/from16 v24, v15

    .line 66
    .line 67
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerType:Ljava/lang/Integer;

    .line 68
    .line 69
    move-object/from16 v25, v14

    .line 70
    .line 71
    move-object/from16 v26, v15

    .line 72
    .line 73
    iget-wide v14, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->duration:J

    .line 74
    .line 75
    move-wide/from16 v27, v14

    .line 76
    .line 77
    iget-wide v14, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->currentPosition:J

    .line 78
    .line 79
    move-wide/from16 v29, v14

    .line 80
    .line 81
    iget v14, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->recyclerIndex:I

    .line 82
    .line 83
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->actionTitle:Ljava/lang/String;

    .line 84
    .line 85
    move-object/from16 v31, v15

    .line 86
    .line 87
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackShow:Ljava/lang/Boolean;

    .line 88
    .line 89
    move-object/from16 v32, v15

    .line 90
    .line 91
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackClick:Ljava/lang/Boolean;

    .line 92
    .line 93
    move-object/from16 v33, v15

    .line 94
    .line 95
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->rich_desc:Ljava/lang/String;

    .line 96
    .line 97
    move-object/from16 v34, v15

    .line 98
    .line 99
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptAd:Lteam/opay/odialog/net/AdDataItem;

    .line 100
    .line 101
    move-object/from16 v35, v15

    .line 102
    .line 103
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->backgroundConfig:Lteam/opay/odialog/net/BackgroundConfig;

    .line 104
    .line 105
    move-object/from16 v36, v15

    .line 106
    .line 107
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonColor:Ljava/lang/String;

    .line 108
    .line 109
    move-object/from16 v37, v15

    .line 110
    .line 111
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonFontColor:Ljava/lang/String;

    .line 112
    .line 113
    move-object/from16 v38, v15

    .line 114
    .line 115
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->ageLimit:Ljava/lang/String;

    .line 116
    .line 117
    move-object/from16 v39, v15

    .line 118
    .line 119
    iget-object v15, v0, Lcom/opay/team/newhome/bean/NewBusinessData;->adReminder:Ljava/lang/String;

    .line 120
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    move-object/from16 v40, v15

    .line 127
    .line 128
    const-string v15, "NewBusinessData(id="

    .line 129
    .line 130
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", serviceId="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v1, ", serviceCode="

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ", imgUrl="

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, ", diverseImgUrl="

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v1, ", superscriptImgUrl="

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", diverseSuperscriptImgUrl="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v1, ", name="

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v1, ", descColor="

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, ", description="

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v1, ", bgColor="

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, ", leftTime="

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v1, ", amount="

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v1, ", amountImgUrl="

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    move-object/from16 v1, v25

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v1, ", openMode="

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    move-object/from16 v1, v16

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v1, ", taskType="

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    move-object/from16 v1, v17

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v1, ", bannerCode="

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    move-object/from16 v1, v18

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v1, ", showCountDown="

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    move-object/from16 v1, v19

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v1, ", hasUploadAd="

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    move-object/from16 v1, v20

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v1, ", action="

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    move-object/from16 v1, v21

    .line 298
    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v1, ", title="

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    move-object/from16 v1, v22

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v1, ", des="

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    move-object/from16 v1, v23

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v1, ", banner_order="

    .line 323
    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    move-object/from16 v1, v24

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string v1, ", bannerType="

    .line 333
    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    move-object/from16 v1, v26

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v1, ", duration="

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    move-wide/from16 v1, v27

    .line 348
    .line 349
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v1, ", currentPosition="

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    move-wide/from16 v1, v29

    .line 358
    .line 359
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string v1, ", recyclerIndex="

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v1, ", actionTitle="

    .line 371
    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    move-object/from16 v1, v31

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-string v1, ", callbackShow="

    .line 381
    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    move-object/from16 v1, v32

    .line 386
    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v1, ", callbackClick="

    .line 391
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    move-object/from16 v1, v33

    .line 396
    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v1, ", rich_desc="

    .line 401
    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    move-object/from16 v1, v34

    .line 406
    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    const-string v1, ", superscriptAd="

    .line 411
    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    move-object/from16 v1, v35

    .line 416
    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string v1, ", backgroundConfig="

    .line 421
    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    move-object/from16 v1, v36

    .line 426
    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string v1, ", buttonColor="

    .line 431
    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    move-object/from16 v1, v37

    .line 436
    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const-string v1, ", buttonFontColor="

    .line 441
    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    move-object/from16 v1, v38

    .line 446
    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v1, ", ageLimit="

    .line 451
    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    move-object/from16 v1, v39

    .line 456
    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string v1, ", adReminder="

    .line 461
    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    move-object/from16 v1, v40

    .line 466
    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string v1, ")"

    .line 471
    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->id:Ljava/lang/Long;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceId:Ljava/lang/Long;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    .line 43
    .line 44
    :goto_1
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->serviceCode:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->imgUrl:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseImgUrl:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptImgUrl:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->diverseSuperscriptImgUrl:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->name:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->descColor:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->description:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->bgColor:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->leftTime:Ljava/lang/Long;

    .line 90
    .line 91
    if-nez v0, :cond_2

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    .line 106
    .line 107
    :goto_2
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->amount:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->amountImgUrl:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->openMode:Ljava/lang/Integer;

    .line 118
    .line 119
    if-nez v0, :cond_3

    .line 120
    .line 121
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    .line 134
    .line 135
    :goto_3
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->taskType:Ljava/lang/Integer;

    .line 136
    .line 137
    if-nez v0, :cond_4

    .line 138
    .line 139
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    .line 152
    .line 153
    :goto_4
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerCode:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->showCountDown:Ljava/lang/Boolean;

    .line 159
    .line 160
    if-nez v0, :cond_5

    .line 161
    .line 162
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    .line 175
    .line 176
    :goto_5
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->hasUploadAd:Ljava/lang/Boolean;

    .line 177
    .line 178
    if-nez v0, :cond_6

    .line 179
    .line 180
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    .line 193
    .line 194
    :goto_6
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->action:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->title:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->des:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->banner_order:Ljava/lang/Integer;

    .line 210
    .line 211
    if-nez v0, :cond_7

    .line 212
    .line 213
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    .line 226
    .line 227
    :goto_7
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->bannerType:Ljava/lang/Integer;

    .line 228
    .line 229
    if-nez v0, :cond_8

    .line 230
    .line 231
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    .line 233
    .line 234
    goto :goto_8

    .line 235
    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    .line 244
    .line 245
    :goto_8
    iget-wide v3, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->duration:J

    .line 246
    .line 247
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 248
    .line 249
    .line 250
    iget-wide v3, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->currentPosition:J

    .line 251
    .line 252
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 253
    .line 254
    .line 255
    iget v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->recyclerIndex:I

    .line 256
    .line 257
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->actionTitle:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackShow:Ljava/lang/Boolean;

    .line 266
    .line 267
    if-nez v0, :cond_9

    .line 268
    .line 269
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    .line 271
    .line 272
    goto :goto_9

    .line 273
    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    .line 282
    .line 283
    :goto_9
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->callbackClick:Ljava/lang/Boolean;

    .line 284
    .line 285
    if-nez v0, :cond_a

    .line 286
    .line 287
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    .line 289
    .line 290
    goto :goto_a

    .line 291
    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    .line 300
    .line 301
    :goto_a
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->rich_desc:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->superscriptAd:Lteam/opay/odialog/net/AdDataItem;

    .line 307
    .line 308
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 309
    .line 310
    .line 311
    iget-object v0, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->backgroundConfig:Lteam/opay/odialog/net/BackgroundConfig;

    .line 312
    .line 313
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 314
    .line 315
    .line 316
    iget-object p2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonColor:Ljava/lang/String;

    .line 317
    .line 318
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget-object p2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->buttonFontColor:Ljava/lang/String;

    .line 322
    .line 323
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    iget-object p2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->ageLimit:Ljava/lang/String;

    .line 327
    .line 328
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-object p2, p0, Lcom/opay/team/newhome/bean/NewBusinessData;->adReminder:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    return-void
.end method
