package ${groupId}.web.listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;

public class ContextRequestListener implements ServletRequestListener {

    @Override
    public void requestInitialized(ServletRequestEvent sre) {
        ContextHolder.init();
    }

    @Override
    public void requestDestroyed(ServletRequestEvent sre) {
        ContextHolder.remove();
    }

}
